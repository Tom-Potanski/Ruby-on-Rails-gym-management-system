# Projekt indywidualny,
# Małgorzata Szwed
# 2 rok
# Nr indeksu: 69826
# Elektroniczny system obsługi siłowni: Twoja siłownia, online
# 16 września 2014
#
# Plik został zmodyfikowany/utorzony na cele uczelniane/potrzeby projektu.

class ActivitiesController < ApplicationController
  before_action :set_activity, only: [:show, :edit, :update, :destroy]

  # GET /activities
  # GET /activities.json
  def index
    #S pobranie wszystkich aktywnosci z bazy
    @activities = Activity.all
  end

  # GET /activities/1
  # GET /activities/1.json
  def show
  end

  # GET /activities/new
  def new
    @activity = Activity.new
  end

  # GET /activities/1/edit
  def edit
  end

  # POST /activities
  # POST /activities.json
  def create
    #S utworzenie nowego rekordu (bez zapisaywania w bazie)
    @activity = Activity.new(activity_params)

    respond_to do |format|
      #S zapisanie w bazie ze sprawdzeniem, czy duało się zapisać i przekierowanie do strony informującej o sukcesie lub nie
      if @activity.save
        format.html { redirect_to @activity, notice: 'Activity was successfully created.' }
        format.json { render action: 'show', status: :created, location: @activity }
      else
        format.html { render action: 'new' }
        format.json { render json: @activity.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /activities/1
  # PATCH/PUT /activities/1.json
  def update
    respond_to do |format|
      if @activity.update(activity_params)
        format.html { redirect_to @activity, notice: 'Activity was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @activity.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /activities/1
  # DELETE /activities/1.json
  def destroy
    @activity.destroy
    respond_to do |format|
      format.html { redirect_to activities_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_activity
      @activity = Activity.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def activity_params
      #S mówi, które pola są dozwolone przy przekazywaniu przez formularz
      params.require(:activity).permit(:name, :description)
    end
end
