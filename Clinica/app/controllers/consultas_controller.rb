class ConsultasController < ApplicationController
  before_action :set_consulta, only: [:show, :edit, :update, :destroy]

  before_filter :carrega_paciente
  # GET /consultas
  # GET /consultas.json
  def index
    @todas_consultas = @paciente.consultas
  end
  

  # GET /consultas/1
  # GET /consultas/1.json
  def show
    @consulta = Consulta.find(params[:id])
  end

  # GET /consultas/new
  def new
    @consulta = @paciente.consultas.new 
     1.times { @consulta.receitas.build }
  end

  # GET /consultas/1/edit
  def edit
    id = params[:id]
    paciente_id = params[:paciente_id]
    @consulta = Consulta.find(id)
    @paciente = Paciente.find(paciente_id)
    render :edit
  end

  # POST /consultas
  # POST /consultas.json
  def create
    p "*" * 50
    p params
    p "*" * 50
    @consulta = @paciente.consultas.new(consulta_params)

    respond_to do |format|
      if @consulta.save
        format.html { redirect_to pacientes_path, notice: 'Consulta foi criado com sucesso.' }
        format.json { render :show, status: :created, location: @paciente_consultas }
      else
        format.html { render :new }
        format.json { render json: @paciente_consultas.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /consultas/1
  # PATCH/PUT /consultas/1.json
  def update
    respond_to do |format|
      if @consulta.update(consulta_params)
        format.html { redirect_to paciente_consultas_path, notice: 'Consulta foi editada com sucesso.' }
        format.json { render :show, status: :ok, location: @consulta }
      else
        format.html { render :edit }
        format.json { render json: @consulta.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /consultas/1
  # DELETE /consultas/1.json
  def destroy
    @consulta.destroy
    respond_to do |format|
      format.html { redirect_to paciente_consultas_path, notice: 'Consulta foi deletada com sucesso.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_consulta
      @consulta = Consulta.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def consulta_params
      params.require(:consulta).permit(:paciente_id, :data, :descricao,
      receitas_attributes: [:id, :consulta_id, :medicamento_id, :complementos],
      medicamentos_attributes: [:id, :nome_medicamento, :uso])
    end

    def carrega_paciente
      p "*" * 50
      p params
      @paciente = Paciente.find(params[:paciente_id])
    end
end
