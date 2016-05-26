class StudentsqlisController < ApplicationController
  before_action :set_studentsqli, only: [:show, :edit, :update, :destroy]

  # GET /studentsqlis
  # GET /studentsqlis.json
  def index
    @studentsqlis = Studentsqli.all
  end

  # GET /studentsqlis/1
  # GET /studentsqlis/1.json
  def show
  end

  # GET /studentsqlis/new
  def new
    @studentsqli = Studentsqli.new
  end

  # GET /studentsqlis/1/edit
  def edit
  end

  # POST /studentsqlis
  # POST /studentsqlis.json
  def create
    @studentsqli = Studentsqli.new(studentsqli_params)

    respond_to do |format|
      if @studentsqli.save
        format.html { redirect_to @studentsqli, notice: 'Studentsqli was successfully created.' }
        format.json { render :show, status: :created, location: @studentsqli }
      else
        format.html { render :new }
        format.json { render json: @studentsqli.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /studentsqlis/1
  # PATCH/PUT /studentsqlis/1.json
  def update
    respond_to do |format|
      if @studentsqli.update(studentsqli_params)
        format.html { redirect_to @studentsqli, notice: 'Studentsqli was successfully updated.' }
        format.json { render :show, status: :ok, location: @studentsqli }
      else
        format.html { render :edit }
        format.json { render json: @studentsqli.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /studentsqlis/1
  # DELETE /studentsqlis/1.json
  def destroy
    @studentsqli.destroy
    respond_to do |format|
      format.html { redirect_to studentsqlis_url, notice: 'Studentsqli was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_studentsqli
      @studentsqli = Studentsqli.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def studentsqli_params
      params.require(:studentsqli).permit(:name, :age)
    end
end
