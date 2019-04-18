class AddsController < ApplicationController
  before_action :set_add, only: [:show, :edit, :update, :destroy]
  before_action :set_magazine

  # GET /adds
  # GET /adds.json
  def index
    @adds = @magazine.adds
  end

  # GET /adds/1
  # GET /adds/1.json
  def show
  end

  # GET /adds/new
  def new
    @add = @magazine.adds.new
  end

  # GET /adds/1/edit
  def edit
  end

  # POST /adds
  # POST /adds.json
  def create
    @add = @magazine.adds.new(add_params)

    respond_to do |format|
      if @add.save
        format.html { redirect_to [@magazine, @add], notice: 'Add was successfully created.' }
        format.json { render :show, status: :created, location: @add }
      else
        format.html { render :new }
        format.json { render json: @add.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /adds/1
  # PATCH/PUT /adds/1.json
  def update
    respond_to do |format|
      if @add.update(add_params)
        format.html { redirect_to  [@magazine, @add], notice: 'Add was successfully updated.' }
        format.json { render :show, status: :ok, location: @add }
      else
        format.html { render :edit }
        format.json { render json: @add.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /adds/1
  # DELETE /adds/1.json
  def destroy
    @add.destroy
    respond_to do |format|
      format.html { redirect_to magazine_adds_url, notice: 'Add was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_add
      @add = Add.find(params[:id])
    end

    def set_magazine
      @magazine = Magazine.find(params[:magazine_id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def add_params
      params.require(:add).permit(:content, :brand, :magazine_id)
    end
end
