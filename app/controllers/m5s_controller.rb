class M5sController < ApplicationController
  before_action :set_m5, only: [:show, :edit, :update, :destroy]

  # GET /m5s
  # GET /m5s.json
  def index
    @m5s = M5.all
  end

  # GET /m5s/1
  # GET /m5s/1.json
  def show
  end

  # GET /m5s/new
  def new
    @m5 = M5.new
  end

  # GET /m5s/1/edit
  def edit
  end

  # POST /m5s
  # POST /m5s.json
  def create
    @m5 = M5.new(m5_params)

    respond_to do |format|
      if @m5.save
        format.html { redirect_to @m5, notice: 'M5 was successfully created.' }
        format.json { render :show, status: :created, location: @m5 }
      else
        format.html { render :new }
        format.json { render json: @m5.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /m5s/1
  # PATCH/PUT /m5s/1.json
  def update
    respond_to do |format|
      if @m5.update(m5_params)
        format.html { redirect_to @m5, notice: 'M5 was successfully updated.' }
        format.json { render :show, status: :ok, location: @m5 }
      else
        format.html { render :edit }
        format.json { render json: @m5.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /m5s/1
  # DELETE /m5s/1.json
  def destroy
    @m5.destroy
    respond_to do |format|
      format.html { redirect_to m5s_url, notice: 'M5 was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_m5
      @m5 = M5.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def m5_params
      params.require(:m5).permit(:one, :two, :three, :quiz_id)
    end
end
