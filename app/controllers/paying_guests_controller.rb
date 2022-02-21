class PayingGuestsController < ApplicationController
  before_action :set_paying_guest, only: %i[ show edit update destroy ]

  # GET /paying_guests or /paying_guests.json
  def index
    @paying_guests = PayingGuest.all
  end

  # GET /paying_guests/1 or /paying_guests/1.json
  def show
  end

  # GET /paying_guests/new
  def new
    @paying_guest = PayingGuest.new
  end

  # GET /paying_guests/1/edit
  def edit
  end

  # POST /paying_guests or /paying_guests.json
  def create
    @paying_guest = PayingGuest.new(paying_guest_params)

    respond_to do |format|
      if @paying_guest.save
        format.html { redirect_to paying_guest_url(@paying_guest), notice: "Paying guest was successfully created." }
        format.json { render :show, status: :created, location: @paying_guest }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @paying_guest.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /paying_guests/1 or /paying_guests/1.json
  def update
    respond_to do |format|
      if @paying_guest.update(paying_guest_params)
        format.html { redirect_to paying_guest_url(@paying_guest), notice: "Paying guest was successfully updated." }
        format.json { render :show, status: :ok, location: @paying_guest }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @paying_guest.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /paying_guests/1 or /paying_guests/1.json
  def destroy
    @paying_guest.destroy

    respond_to do |format|
      format.html { redirect_to paying_guests_url, notice: "Paying guest was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_paying_guest
      @paying_guest = PayingGuest.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def paying_guest_params
      params.require(:paying_guest).permit(:paying_guest, :address)
    end
end
