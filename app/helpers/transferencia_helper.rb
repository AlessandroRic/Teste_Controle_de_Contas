module TransferenciaHelper
    module Gerador
    def self.codigo_alphanumerico(params)
      return false unless validar_parametros_codigo_alphanumerico(params)

      date = DateTime.now.strftime('%Y%m%d%H%M%S%L').to_s
      conta_origem_id = params[:conta_debitada_id].to_s
      conta_destino_id = params[:conta_creditada_id].to_s
      tipo = params[:tipo].to_s

      valor = date + conta_debitada_id + tipo + conta_creditada_id
      Digest::MD5.hexdigest(valor)
    end

    private

      def self.validar_parametros_codigo_alphanumerico(params)
        return false unless params[:conta_debitada_id].is_a?(Integer)
        return false unless params[:conta_creditada_id].is_a?(Integer) || params[:conta_creditada_id].blank?

        return false unless Transferencia.tipos.keys.include?(params[:tipo])
        true
      end
  end
end
