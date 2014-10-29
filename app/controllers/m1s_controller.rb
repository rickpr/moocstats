class M1sController < ApplicationController
  before_action :set_m1, only: [:show, :edit, :update, :destroy]

  # GET /m1s
  # GET /m1s.json
  def index
    @m1s = M1.all
  end

  # GET /m1s/1
  # GET /m1s/1.json
  def show
  end

  # GET /m1s/new
  def new
    @m1 = M1.new
  end

  # GET /m1s/1/edit
  def edit
  end

  # POST /m1s
  # POST /m1s.json
  def create
    @m1 = M1.new(m1_params)

    respond_to do |format|
      if @m1.save
        format.html { redirect_to @m1, notice: 'M1 was successfully created.' }
        format.json { render :show, status: :created, location: @m1 }
      else
        format.html { render :new }
        format.json { render json: @m1.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /m1s/1
  # PATCH/PUT /m1s/1.json
  def update
    respond_to do |format|
      if @m1.update(m1_params)
        format.html { redirect_to @m1, notice: 'M1 was successfully updated.' }
        format.json { render :show, status: :ok, location: @m1 }
      else
        format.html { render :edit }
        format.json { render json: @m1.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /m1s/1
  # DELETE /m1s/1.json
  def destroy
    @m1.destroy
    respond_to do |format|
      format.html { redirect_to m1s_url, notice: 'M1 was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_m1
      @m1 = M1.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def m1_params
      params.require(:m1).permit(:one, :two, :quiz_id)
    end
end
