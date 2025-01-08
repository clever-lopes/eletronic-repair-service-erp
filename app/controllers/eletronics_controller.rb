class EletronicsController < ApplicationController
  before_action :set_eletronic, only: %i[ show edit update destroy ]

  # GET /eletronics or /eletronics.json
  def index
    @eletronics = Eletronic.all
  end

  # GET /eletronics/1 or /eletronics/1.json
  def show
  end

  # GET /eletronics/new
  def new
    @eletronic = Eletronic.new
  end

  # GET /eletronics/1/edit
  def edit
  end

  # POST /eletronics or /eletronics.json
  def create
    @eletronic = Eletronic.new(eletronic_params)

    respond_to do |format|
      if @eletronic.save
        format.html { redirect_to @eletronic, notice: "Eletronic was successfully created." }
        format.json { render :show, status: :created, location: @eletronic }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @eletronic.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /eletronics/1 or /eletronics/1.json
  def update
    respond_to do |format|
      if @eletronic.update(eletronic_params)
        format.html { redirect_to @eletronic, notice: "Eletronic was successfully updated." }
        format.json { render :show, status: :ok, location: @eletronic }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @eletronic.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /eletronics/1 or /eletronics/1.json
  def destroy
    @eletronic.destroy!

    respond_to do |format|
      format.html { redirect_to eletronics_path, status: :see_other, notice: "Eletronic was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_eletronic
      @eletronic = Eletronic.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def eletronic_params
      params.expect(eletronic: [ :serial_number, :model, :quantity, :color, :type_id, :accessory_id ])
    end
end
