class RentablesController < ApplicationController
  before_action :set_rentable, only: [:show, :edit, :update, :destroy]

  # GET /rentables
  # GET /rentables.json
  def index
    @rentables = Rentable.all
  end

  # GET /rentables/1
  # GET /rentables/1.json
  def show
  end

  # GET /rentables/new
  def new
    @rentable = Rentable.new
  end

  # GET /rentables/1/edit
  def edit
  end

  # POST /rentables
  # POST /rentables.json
  def create
    @rentable = Rentable.new(rentable_params)

    respond_to do |format|
      if @rentable.save
        format.html { redirect_to @rentable, notice: 'Rentable was successfully created.' }
        format.json { render :show, status: :created, location: @rentable }
      else
        format.html { render :new }
        format.json { render json: @rentable.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /rentables/1
  # PATCH/PUT /rentables/1.json
  def update
    respond_to do |format|
      if @rentable.update(rentable_params)
        format.html { redirect_to @rentable, notice: 'Rentable was successfully updated.' }
        format.json { render :show, status: :ok, location: @rentable }
      else
        format.html { render :edit }
        format.json { render json: @rentable.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /rentables/1
  # DELETE /rentables/1.json
  def destroy
    @rentable.destroy
    respond_to do |format|
      format.html { redirect_to rentables_url, notice: 'Rentable was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_rentable
      @rentable = Rentable.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def rentable_params
      params.require(:rentable).permit(:name, :image, :description, :location, :quantity, :category)
    end
end
