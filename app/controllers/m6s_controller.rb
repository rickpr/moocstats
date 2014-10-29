class M6sController < ApplicationController
  before_action :set_m6, only: [:show, :edit, :update, :destroy]

  # GET /m6s
  # GET /m6s.json
  def index
    @m6s = M6.all
  end

  # GET /m6s/1
  # GET /m6s/1.json
  def show
  end

  # GET /m6s/new
  def new
    @m6 = M6.new
  end

  # GET /m6s/1/edit
  def edit
  end

  # POST /m6s
  # POST /m6s.json
  def create
    @m6 = M6.new(m6_params)

    respond_to do |format|
      if @m6.save
        format.html { redirect_to @m6, notice: 'M6 was successfully created.' }
        format.json { render :show, status: :created, location: @m6 }
      else
        format.html { render :new }
        format.json { render json: @m6.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /m6s/1
  # PATCH/PUT /m6s/1.json
  def update
    respond_to do |format|
      if @m6.update(m6_params)
        format.html { redirect_to @m6, notice: 'M6 was successfully updated.' }
        format.json { render :show, status: :ok, location: @m6 }
      else
        format.html { render :edit }
        format.json { render json: @m6.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /m6s/1
  # DELETE /m6s/1.json
  def destroy
    @m6.destroy
    respond_to do |format|
      format.html { redirect_to m6s_url, notice: 'M6 was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_m6
      @m6 = M6.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def m6_params
      params.require(:m6).permit(:one, :two, :three, :four, :quiz_id)
    end
end
