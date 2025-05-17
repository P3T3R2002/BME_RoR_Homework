class DrillingsController < ApplicationController
  before_action :set_drilling, only: %i[ show edit update destroy ]

  # GET /drillings or /drillings.json
  def index
    @drillings = Drilling.all
  end

  # GET /drillings/1 or /drillings/1.json
  def show
  end

  # GET /drillings/new
  def new
    @drilling = Drilling.new
  end

  # GET /drillings/1/edit
  def edit
  end

  # POST /drillings or /drillings.json
  def create
    @drilling = Drilling.new(drilling_params)

    respond_to do |format|
      if @drilling.save
        format.html { redirect_to @drilling, notice: "Drilling was successfully created." }
        format.json { render :show, status: :created, location: @drilling }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @drilling.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /drillings/1 or /drillings/1.json
  def update
    respond_to do |format|
      if @drilling.update(drilling_params)
        format.html { redirect_to @drilling, notice: "Drilling was successfully updated." }
        format.json { render :show, status: :ok, location: @drilling }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @drilling.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /drillings/1 or /drillings/1.json
  def destroy
    @drilling.destroy!

    respond_to do |format|
      format.html { redirect_to drillings_path, status: :see_other, notice: "Drilling was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_drilling
      @drilling = Drilling.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def drilling_params
      params.expect(drilling: [ :year, :place, :name, :drilling_type, :amount, :drilled_depth ])
    end
end
