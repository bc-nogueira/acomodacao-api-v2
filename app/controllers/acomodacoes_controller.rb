class AcomodacoesController < ApplicationController
  before_action :set_acomodacao, only: [:show, :edit, :update, :destroy]
  def index
    @acomodacoes = Acomodacao.all
  end

  def show; end

  def new
    @acomodacao = Acomodacao.new
  end

  def create
    @acomodacao = Acomodacao.new(acomodacao_params)

    if @acomodacao.save
      redirect_to acomodacao_path @acomodacao
    else
      render json: @acomodacao.errors, status: :unprocessable_entity
    end
  end

  def edit; end

  def update
    if @acomodacao.update(acomodacao_params)
      redirect_to acomodacao_path @acomodacao
    else
      render json: @acomodacao.errors, status: :unprocessable_entity
    end
  end

  def destroy
    if @acomodacao.destroy
      redirect_to acomodacoes_path
    end
  end

  private
  def set_acomodacao
    @acomodacao = Acomodacao.find(params[:id])
  end

  def acomodacao_params
    params.require(:acomodacao).permit(:titulo, :descricao, :capacidade, :preco, :tipo, :logradouro, :numero,
                                       :complemento, :bairro, :cidade, :estado)
  end
end
