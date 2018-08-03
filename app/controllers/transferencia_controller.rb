class TransferenciaController < ApplicationController
  before_action :set_transferencium, only: [:show]

  # GET /transferencia
  # GET /transferencia.json
  def index
    @transferencia = Transferencium.all
  end

  # GET /transferencia/1
  # GET /transferencia/1.json
  def show
  end
  
  # POST /transferencia
  # POST /transferencia.json
  def create
    case params[:transferencium][:tipo]
          when 'carga' then @transferencium = TransacaoCarga.new(transferencium_params_carga)
          when 'transferencia' then @transferencium = TransacaoTransferencia.new(transferencium_params_transferencia)
          when 'estorno' then @transferencium = TransacaoEstorno.new(transferencium_params_estorno)
          else
            @transferencium = OpenStruct.new(errors: ({tipo: [{message: 'deve ser válido'}]}).to_json, efetuar: false)
    end

      if @transferencium.efetuar
          head 204, location: api_v1_transacao_url(@transferencium.id)
      else
          render json: @transferencium.errors, status: 422
      end
   end


  private
  
    # Use callbacks to share common setup or constraints between actions.
    def set_transferencium
      @transferencium = Transferencium.find(params[:id])
    end

      def get_conta
        @conta = Conta.find(params[:conta_id])
      end

      # Only allow a trusted parameter "white list" through.
      def transferencium_params
        params.require(:transferencium).permit(
            :tipo, :valor, :conta_debitada_id, :conta_creditada_id,
            :estorno, :condigo_estorno
        )
      end

      def transferencium_params_carga
        params.require(:transferencium).permit(:tipo, :valor, :conta_creditada_id)
      end

      def transferencium_params_transferencia
        params.require(:transferencium).permit(:tipo, :valor, :conta_debitada_id, :conta_creditada_id)
      end

      def transferencium_params_estorno
        params.require(:transferencium).permit(:tipo, :condigo_estorno)
      end
    end


