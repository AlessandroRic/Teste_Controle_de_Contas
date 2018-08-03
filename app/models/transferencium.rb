class Transferencium < ActiveRecord::Base
      enum tipo: [:carga, :transferencia, :estornado]

  validates :codigo_alpha_numerico, presence: true,
            uniqueness: true,
            length: { is: 32 }

  validates :tipo, presence: true,
            inclusion: { in: Transferencium.tipos.keys }

  validates :valor, presence: true,
                    numericality: { greater_than: 0 }

  validates :conta_debitada_id, presence: true,
                              numericality: { only_integer: true }

  validates :conta_debitada_valor_antes_transacao, presence: true,
                                                 numericality: { greater_than_or_equal_to: 0 }

  validates :conta_creditada_id, numericality: { only_integer: true },
                              allow_nil: { if: Proc.new { |t| t.tipo == 'carga' } }

  validates :conta_destino_valor_antes_transacao, numericality: { greater_than_or_equal_to: 0 }, allow_nil: { if: Proc.new { |t| t.conta_destino_id.nil? } }

  validates :codigo_transacional_estornado, uniqueness: true, length: { is: 32 }, allow_nil: { if: Proc.new { |t| t.estorno == true } }

  belongs_to :conta_debitada, class_name: 'Conta', foreign_key: 'conta_debitada_id'
  belongs_to :conta_creditada, class_name: 'Conta', foreign_key: 'conta_creditada_id'

  def contas
    Conta.where(id: [self.conta_creditada_id, self.conta_creditada_id])
  end

  def efetuar; end

  private
    def cadastrada?
      if Transferencium.find_by(codigo_alpha_numerico: self.codigo_alpha_numerico)
        self.errors.add(:codigo_alpha_numerico, message: 'já está cadastrado cadastrado')
        return true
      end
      false
    end

    def set_valores_padroes; 
    end

    def criar_codigo_transacional
      TransferenciumHelper::Gerador.codigo_alphanumerico(
        conta_debitada_id: conta_debitada_id, tipo: tipo, conta_creditada_id: conta_creditada_id
      )
    end
end
