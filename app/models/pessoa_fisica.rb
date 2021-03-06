class PessoaFisica < ActiveRecord::Base
    validates :cpf, presence: true,
                  uniqueness: { case_insensitive: false },
                  numericality: { only_integer: true },
                  length: { is: 11 }


  validates :nome, presence: true,
                   format: { with: /\A[^0-9!@\$%\^&*+_=]+\z/ },
                   length: { in: 2..70 }

  has_many :contas, as: :pessoa
end
