class EvictionsController < ApplicationController
  layout "modal", except: [:index, :show, :evictionlist] 
  before_action :set_eviction, only: [:show, :edit, :update, :destroy]

  # GET /evictions
  # GET /evictions.json
  def index
    @eviction = Eviction.new
    @evictions = Eviction.all
    @cust = cust  
    @evic = evic
    @prop = prop
  end

  def evictionlist
    @eviction = Eviction.new
    @evictions = Eviction.all
  end

  # GET /evictions/1
  # GET /evictions/1.json
  def show
    @cust = cust  
    @evic = evic
    @prop = prop
  end

  # GET /evictions/new
  def new
    @eviction = Eviction.new
  end

  # GET /evictions/1/edit
  def edit
    @cust = cust  
    @evic = evic
    @prop = prop

  end

  # POST /evictions
  # POST /evictions.json
  def create
    @eviction = Eviction.new(eviction_params)

    respond_to do |format|
      if @eviction.save
        format.html { redirect_to @eviction, notice: 'Eviction was successfully created.' }
        format.json { render :show, status: :created, location: @eviction }
      else
        format.html { render :new }
        format.json { render json: @eviction.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /evictions/1
  # PATCH/PUT /evictions/1.json
  def update
    respond_to do |format|
      if @eviction.update(eviction_params)
        format.html { redirect_to @eviction, notice: 'Eviction was successfully updated.' }
        format.json { render :show, status: :ok, location: @eviction }
      else
        format.html { render :edit }
        format.json { render json: @eviction.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /evictions/1
  # DELETE /evictions/1.json
  def destroy
    @eviction.destroy
    respond_to do |format|
      format.html { redirect_to evictions_url, notice: 'Eviction was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_eviction
      @eviction = Eviction.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def eviction_params
      params.require(:eviction).permit(:plantiff, :defendant, :case, :address, :city, :state, :zip, :phone, :h_s_v, :scheduled, :ejected, :customer_id, :property_id)
    end
end
