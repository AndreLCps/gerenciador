class DadosController < ApplicationController
  before_action :set_dado, only: %i[show edit update destroy]

  def index
    @dados = Dado.all
    respond_to do |format|
      format.html
      # format.csv { send_data @dados.to_s, filename: "dados-#{DateTime.now.strftime('%d%m%Y%H%M')}.csv" }
      format.csv do
        response.headers['Content-Type'] = 'text/csv'
        response.headers['Content-Disposition'] = 'attachment; filename=invoice.env'
        render template: 'dados/index.csv.erb'
      end
    end
  end

  # GET /dados/1 or /dados/1.json
  def show
    @dados = Dado.to_s
    respond_to do |format|
      format.html
      # format.csv { send_data @dados.to_s, filename: "dados-#{DateTime.now.strftime('%d%m%Y%H%M')}.csv" }
      format.csv do
        response.headers['Content-Type'] = 'text/csv'
        response.headers['Content-Disposition'] = 'attachment; filename=invoice.env'
        render template: 'dados/show.csv.erb'
      end
    end
  end

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
        format.html { redirect_to dado_url(@dado), notice: 'Dados criados com sucesso.' }
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
        format.html { redirect_to dado_url(@dado), notice: 'Dados atualizados com sucesso.' }
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
    params.require(:dado).permit(
      :razao,
      :nomef,
      :cnpj,
      :ponto,
      :endereco,
      :numero,
      :complemento,
      :cep,
      :bairro,
      :cidade,
      :estado,
      :email,
      :fone1,
      :fone2,
      :homepage,
      :observacoes,
      :nome_completo,
      :cpf,
      :data_de_nascimento,
      :payment_agency,
      :office_hours,
      :agency_number,
      :agency_full_name,
      :checking_accont_label,
      :sessions_new_fone_number,
      :bank_code,
      :agency_short_name,
      :title_name,
      :url_ajuda,
      :conta_header,
      :endereco_pasta_arquivos,
      :aplicativo,
      :gerencial,
      :internet_banking,
      :nome_dpo,
      :email_dpo,
      :fone_dpo,
      :lojas_apps_android_ios,
      :email_devs_cashway,
      :email_validate,
      :accont_reproval,
      :create_accont,
      :reset_password,
      :pix_devolution_recived,
      :pix_recived,
      :insuficient_funds,
      :pix_devolution_send,
      :pix_sent,
      :slip_paid,
      :ted_payment_confirmed,
      :ted_recived,
      :ted_rollback,
      :dns_ib,
      :dns_gerencial,
      :cliente_id,
      :secret_id,
      :secret_id_3rdtoken,
      :pix_key,
      :remoto_ip_fixo,
      :remoto_vpn,
      :rxp_ip_fixo,
      :rxp_vpn,
      :observacoes_lead
    )
  end
end
