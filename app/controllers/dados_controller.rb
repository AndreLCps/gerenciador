class DadosController < ApplicationController
  before_action :set_dado, only: %i[show edit update destroy]

  # GET /dados or /dados.json
  def index
    @dados = Dado.all
  end

  # GET /dados/1 or /dados/1.json
  def show; end

  # GET /dados/new
  def new
    @dado = Dado.new
  end

  # GET /dados/1/edit
  def edit; end

  # POST /dados or /dados.json
  def create
    @dado = Dado.new(dado_params)

    respond_to do |format|
      if @dado.save
        format.html { redirect_to dado_url(@dado), notice: 'Dado was successfully created.' }
        format.json { render :show, status: :created, location: @dado }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @dado.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /dados/1 or /dados/1.json
  def update
    respond_to do |format|
      if @dado.update(dado_params)
        format.html { redirect_to dado_url(@dado), notice: 'Dado was successfully updated.' }
        format.json { render :show, status: :ok, location: @dado }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @dado.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dados/1 or /dados/1.json
  def destroy
    @dado.destroy

    respond_to do |format|
      format.html { redirect_to dados_url, notice: 'Dado was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_dado
    @dado = Dado.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def dado_params
    params.require(:dado).permit(:razao, :nomef, :cnpj, :ponto, :endereco, :numero, :complemento, :cep, :bairro,
                                 :cidade, :estado, :email, :fone1, :fone2, :homepage, :observacoes)
  end
end
