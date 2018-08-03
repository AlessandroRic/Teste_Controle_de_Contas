class PessoaJuridicasController < ApplicationController
  before_action :set_pessoa_juridica, only: [:show, :edit, :update, :destroy]

  # GET /pessoa_juridicas
  # GET /pessoa_juridicas.json
  def index
    @pessoa_juridicas = PessoaJuridica.all
  end

  # GET /pessoa_juridicas/1
  # GET /pessoa_juridicas/1.json
  def show
  end

  # GET /pessoa_juridicas/new
  def new
    @pessoa_juridica = PessoaJuridica.new
  end

  # GET /pessoa_juridicas/1/edit
  def edit
  end

  # POST /pessoa_juridicas
  # POST /pessoa_juridicas.json
  def create
    @pessoa_juridica = PessoaJuridica.new(pessoa_juridica_params)

    respond_to do |format|
      if @pessoa_juridica.save
        format.html { redirect_to @pessoa_juridica, notice: 'Pessoa juridica was successfully created.' }
        format.json { render :show, status: :created, location: @pessoa_juridica }
      else
        format.html { render :new }
        format.json { render json: @pessoa_juridica.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pessoa_juridicas/1
  # PATCH/PUT /pessoa_juridicas/1.json
  def update
    respond_to do |format|
      if @pessoa_juridica.update(pessoa_juridica_params)
        format.html { redirect_to @pessoa_juridica, notice: 'Pessoa juridica was successfully updated.' }
        format.json { render :show, status: :ok, location: @pessoa_juridica }
      else
        format.html { render :edit }
        format.json { render json: @pessoa_juridica.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pessoa_juridicas/1
  # DELETE /pessoa_juridicas/1.json
  def destroy
    @pessoa_juridica.destroy
    respond_to do |format|
      format.html { redirect_to pessoa_juridicas_url, notice: 'Pessoa juridica was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pessoa_juridica
      @pessoa_juridica = PessoaJuridica.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def pessoa_juridica_params
      params.require(:pessoa_juridica).permit(:nome_fantasia, :razao_social, :cnpj)
    end
end
