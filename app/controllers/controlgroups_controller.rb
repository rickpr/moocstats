class ControlgroupsController < ApplicationController
  before_action :set_controlgroup, only: [:show, :edit, :update, :destroy]

  # GET /controlgroups
  # GET /controlgroups.json
  def index
    @controlgroups = Controlgroup.all
  end

  # GET /controlgroups/1
  # GET /controlgroups/1.json
  def show
  end

  # GET /controlgroups/new
  def new
    @controlgroup = Controlgroup.new
  end

  # GET /controlgroups/1/edit
  def edit
  end

  # POST /controlgroups
  # POST /controlgroups.json
  def create
    @controlgroup = Controlgroup.new(controlgroup_params)

    respond_to do |format|
      if @controlgroup.save
        format.html { redirect_to @controlgroup, notice: 'Controlgroup was successfully created.' }
        format.json { render :show, status: :created, location: @controlgroup }
      else
        format.html { render :new }
        format.json { render json: @controlgroup.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /controlgroups/1
  # PATCH/PUT /controlgroups/1.json
  def update
    respond_to do |format|
      if @controlgroup.update(controlgroup_params)
        format.html { redirect_to @controlgroup, notice: 'Controlgroup was successfully updated.' }
        format.json { render :show, status: :ok, location: @controlgroup }
      else
        format.html { render :edit }
        format.json { render json: @controlgroup.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /controlgroups/1
  # DELETE /controlgroups/1.json
  def destroy
    @controlgroup.destroy
    respond_to do |format|
      format.html { redirect_to controlgroups_url, notice: 'Controlgroup was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_controlgroup
      @controlgroup = Controlgroup.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def controlgroup_params
      params.require(:controlgroup).permit(:student_id)
    end
end
