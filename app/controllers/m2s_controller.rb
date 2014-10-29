class M2sController < ApplicationController
  before_action :set_m2, only: [:show, :edit, :update, :destroy]

  # GET /m2s
  # GET /m2s.json
  def index
    @m2s = M2.all
  end

  # GET /m2s/1
  # GET /m2s/1.json
  def show
  end

  # GET /m2s/new
  def new
    @m2 = M2.new
  end

  # GET /m2s/1/edit
  def edit
  end

  # POST /m2s
  # POST /m2s.json
  def create
    @m2 = M2.new(m2_params)

    respond_to do |format|
      if @m2.save
        format.html { redirect_to @m2, notice: 'M2 was successfully created.' }
        format.json { render :show, status: :created, location: @m2 }
      else
        format.html { render :new }
        format.json { render json: @m2.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /m2s/1
  # PATCH/PUT /m2s/1.json
  def update
    respond_to do |format|
      if @m2.update(m2_params)
        format.html { redirect_to @m2, notice: 'M2 was successfully updated.' }
        format.json { render :show, status: :ok, location: @m2 }
      else
        format.html { render :edit }
        format.json { render json: @m2.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /m2s/1
  # DELETE /m2s/1.json
  def destroy
    @m2.destroy
    respond_to do |format|
      format.html { redirect_to m2s_url, notice: 'M2 was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_m2
      @m2 = M2.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def m2_params
      params.require(:m2).permit(:one, :two, :three, :quiz_id)
    end
end
