# frozen_string_literal: true
class TherapiesController < ProtectedController
  before_action :set_therapy, only: [:index, :show]

  # GET /therapies
  def index
    @therapies = Therapy.all

    render json: @therapies
  end

  # GET /therapies/1
  def show
    render json: @therapy
  end

  # POST /therapies
  def create
    @therapy = Therapy.new(therapy_params)

    if @therapy.save
      render json: @therapy, status: :created
    else
      render json: @therapy.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /therapies/1
  def update
    if @therapy.update(therapy_params)
      render json: @therapy
    else
      render json: @therapy.errors, status: :unprocessable_entity
    end
  end

  # DELETE /therapies/1
  def destroy
    @therapy.destroy
  end

  # Use callbacks to share common setup or constraints between actions.
  def set_therapy
    @therapy = Therapy.find(params[:id])
  end

  # Only allow a trusted parameter "white list" through.
  def therapy_params
    params.require(:therapy).permit(:name)
  end

  private :set_therapy, :therapy_params
end
