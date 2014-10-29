class M3sController < ApplicationController
  before_action :set_m3, only: [:show, :edit, :update, :destroy]

  # GET /m3s
  # GET /m3s.json
  def index
    @m3s = M3.all
  end

  # GET /m3s/1
  # GET /m3s/1.json
  def show
  end

  # GET /m3s/new
  def new
    @m3 = M3.new
  end

  # GET /m3s/1/edit
  def edit
  end

  # POST /m3s
  # POST /m3s.json
  def create
    @m3 = M3.new(m3_params)

    respond_to do |format|
      if @m3.save
        format.html { redirect_to @m3, notice: 'M3 was successfully created.' }
        format.json { render :show, status: :created, location: @m3 }
      else
        format.html { render :new }
        format.json { render json: @m3.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /m3s/1
  # PATCH/PUT /m3s/1.json
  def update
    respond_to do |format|
      if @m3.update(m3_params)
        format.html { redirect_to @m3, notice: 'M3 was successfully updated.' }
        format.json { render :show, status: :ok, location: @m3 }
      else
        format.html { render :edit }
        format.json { render json: @m3.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /m3s/1
  # DELETE /m3s/1.json
  def destroy
    @m3.destroy
    respond_to do |format|
      format.html { redirect_to m3s_url, notice: 'M3 was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_m3
      @m3 = M3.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def m3_params
      params.require(:m3).permit(:one, :two, :quiz_id)
    end
end
