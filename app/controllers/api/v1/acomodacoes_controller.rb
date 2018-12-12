module Api::V1
  class AcomodacoesController < ApplicationController
    # before_action :set_acomodacao, only: [:show, :update, :destroy]

    # GET /acomodacoes
    def index
      @acomodacoes = Acomodacao.all
      render json: @acomodacoes
    end

    # GET /acomodacoes/1
    def show
      @acomodacao = Acomodacao.find(params[:id])
      # binding.pry
      # file.service_url
      teste = {}
      teste = @acomodacao.files.map do |file|
        file.service_url
      end
      teste2 = { urls: teste }
      # binding.pry

      # render json: @acomodacao, testando: teste.to_json

      render json: { acomodacao: @acomodacao, urls: teste }
    end

    # POST /acomodacoes
    # def create
    #   @acomodacao = Acomodacao.new(acomodacao_params)
    #
    #   if @acomodacao.save
    #     render json: @acomodacao, status: :created
    #   else
    #     render json: @acomodacao.errors, status: :unprocessable_entity
    #   end
    # end

    # PATCH/PUT /acomodacoes/1
    # def update
    #   if @acomodacao.update(acomodacao_params)
    #     render json: @acomodacao
    #   else
    #     render json: @acomodacao.errors, status: :unprocessable_entity
    #   end
    # end

    # DELETE /acomodacoes/1
    # def destroy
    #   @acomodacao.destroy
    #   if @acomodacao.destroy
    #     head :no_content, status: :ok
    #   else
    #     render json: @acomodacao.errors, status: :unprocessable_entity
    #   end
    # end

    private
    # Use callbacks to share common setup or constraints between actions.
    # def set_acomodacao
    #   @acomodacao = Acomodacao.find(params[:id])
    # end

    # # Only allow a trusted parameter "white list" through.
    # def acomodacao_params
    #   params.require(:acomodacao).permit(:titulo, :descricao, :capacidade, :preco, :tipo, :logradouro, :numero,
    #                                      :complemento, :bairro, :cidade, :estado)
    # end
  end
end
