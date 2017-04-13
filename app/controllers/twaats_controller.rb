class TwaatsController < ApplicationController
  before_action :set_twaat, only: [:show, :edit, :update, :destroy]

  # GET /twaats
  # GET /twaats.json
  def index
    @user = User.find(params[:user_id])
    
    @twaats = @user.twaats
  end

  # GET /twaats/1
  # GET /twaats/1.json
  def show
    @twaats = @user.twaats
  end

  # GET /twaats/new
  def new
    
    @twaat = Twaat.new
    @twaat.attributes = {user_id: params[:user_id]} 
  end

  # GET /twaats/1/edit
  def edit
  end

  # POST /twaats
  # POST /twaats.json
  def create
    @twaat = Twaat.new(twaat_params)
    @twaat.attributes = {user_id: params[:user_id]} 
    respond_to do |format|
      if @twaat.save
        format.html { redirect_to @user_twaat, notice: 'Twaat was successfully created.' }
        format.json { render :show, status: :created, location: @twaat }
      else
        format.html { render :new }
        format.json { render json: @twaat.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /twaats/1
  # PATCH/PUT /twaats/1.json
  def update
    respond_to do |format|
      if @twaat.update(twaat_params)
        format.html { redirect_to @twaat, notice: 'Twaat was successfully updated.' }
        format.json { render :show, status: :ok, location: @twaat }
      else
        format.html { render :edit }
        format.json { render json: @twaat.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /twaats/1
  # DELETE /twaats/1.json
  def destroy
    @twaat.destroy
    respond_to do |format|
      format.html { redirect_to twaats_url, notice: 'Twaat was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_twaat
      @twaat = Twaat.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def twaat_params
      params.require(:twaat).permit(:content, :img_url,:user_id)
    end
end
