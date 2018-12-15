class AcomodacoesController < ApplicationController
  before_action :set_acomodacao, only: [:show, :edit, :update, :destroy, :add_images, :save_images, :destroy_image]
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
    @acomodacao.files.attach(params[:acomodacao][:files])
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

  def add_images; end

  def save_images
    @acomodacao.files.attach(params[:acomodacao][:files])

    if @acomodacao.save
      redirect_to acomodacao_path @acomodacao
    end
  end

  def destroy_image
    @acomodacao.files.find(params[:file_id]).purge
    redirect_to acomodacao_path @acomodacao
  end

  private
  def set_acomodacao
    @acomodacao = Acomodacao.find(params[:id])
  end

  def acomodacao_params
    params.require(:acomodacao).permit(:titulo, :descricao, :capacidade, :preco, :tipo, :logradouro, :numero,
                                       :complemento, :bairro, :cidade, :estado, :latitude, :longitude)
  end
end
