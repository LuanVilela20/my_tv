class AttractionsController < ApplicationController
  before_action :set_attraction, only: [:show, :update, :destroy]

  # GET /attractions
  def index
   
    @attractions = Attraction.joins(:kind, :medium, :channel)
    .select("attractions.attraction_name, attractions.description as desc_att, attractions.transmission_date, 
             kinds.description as desc_kind, media.description as desc_media, channels.description as desc_channel")
             .order(:transmission_date)

    render json: @attractions #, methods: :date_transmition
    #include: :kind(only: [:description])
  end

  # GET /attractions/1
  def show
    render json: @attraction
  end

  # POST /attractions
  def create
    @attraction = Attraction.new(attraction_params)

    if @attraction.save
      render json: @attraction, status: :created, location: @attraction
    else
      render json: @attraction.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /attractions/1
  def update
    if @attraction.update(attraction_params)
      render json: @attraction
    else
      render json: @attraction.errors, status: :unprocessable_entity
    end
  end

  # DELETE /attractions/1
  def destroy
    @attraction.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_attraction
      @attraction = Attraction.joins(:kind, :medium, :channel)
      .select("attractions.attraction_name, attractions.description as desc_att, attractions.transmission_date, 
               kinds.description as desc_kind, media.description as desc_media, channels.description as desc_channel")
               .order(:transmission_date).find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def attraction_params
      params.require(:attraction).permit(:attraction_name, :description, :transmission_date, :kind_id, :channel_id, :medium_id)
    end
end
