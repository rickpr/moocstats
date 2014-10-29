class M4sController < ApplicationController
  before_action :set_m4, only: [:show, :edit, :update, :destroy]

  # GET /m4s
  # GET /m4s.json
  def index
    @m4s = M4.all
  end

  # GET /m4s/1
  # GET /m4s/1.json
  def show
  end

  # GET /m4s/new
  def new
    @m4 = M4.new
  end

  # GET /m4s/1/edit
  def edit
  end

  # POST /m4s
  # POST /m4s.json
  def create
    @m4 = M4.new(m4_params)

    respond_to do |format|
      if @m4.save
        format.html { redirect_to @m4, notice: 'M4 was successfully created.' }
        format.json { render :show, status: :created, location: @m4 }
      else
        format.html { render :new }
        format.json { render json: @m4.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /m4s/1
  # PATCH/PUT /m4s/1.json
  def update
    respond_to do |format|
      if @m4.update(m4_params)
        format.html { redirect_to @m4, notice: 'M4 was successfully updated.' }
        format.json { render :show, status: :ok, location: @m4 }
      else
        format.html { render :edit }
        format.json { render json: @m4.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /m4s/1
  # DELETE /m4s/1.json
  def destroy
    @m4.destroy
    respond_to do |format|
      format.html { redirect_to m4s_url, notice: 'M4 was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_m4
      @m4 = M4.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def m4_params
      params.require(:m4).permit(:one, :two, :three, :quiz_id)
    end
end
