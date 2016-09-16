class StatusConteudosController < ApplicationController
  before_action :set_status_conteudo, only: [:show, :edit, :update, :destroy]

  # GET /status_conteudos
  # GET /status_conteudos.json
  def index
    @status_conteudos = StatusConteudo.all
  end

  # GET /status_conteudos/1
  # GET /status_conteudos/1.json
  def show
  end

  # GET /status_conteudos/new
  def new
    @status_conteudo = StatusConteudo.new
  end

  # GET /status_conteudos/1/edit
  def edit
  end

  # POST /status_conteudos
  # POST /status_conteudos.json
  def create
    @status_conteudo = StatusConteudo.new(status_conteudo_params)

    respond_to do |format|
      if @status_conteudo.save
        format.html { redirect_to @status_conteudo, notice: 'Status conteudo was successfully created.' }
        format.json { render :show, status: :created, location: @status_conteudo }
      else
        format.html { render :new }
        format.json { render json: @status_conteudo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /status_conteudos/1
  # PATCH/PUT /status_conteudos/1.json
  def update
    respond_to do |format|
      if @status_conteudo.update(status_conteudo_params)
        format.html { redirect_to @status_conteudo, notice: 'Status conteudo was successfully updated.' }
        format.json { render :show, status: :ok, location: @status_conteudo }
      else
        format.html { render :edit }
        format.json { render json: @status_conteudo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /status_conteudos/1
  # DELETE /status_conteudos/1.json
  def destroy
    @status_conteudo.destroy
    respond_to do |format|
      format.html { redirect_to status_conteudos_url, notice: 'Status conteudo was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_status_conteudo
      @status_conteudo = StatusConteudo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def status_conteudo_params
      params.require(:status_conteudo).permit(:nome)
    end
end
