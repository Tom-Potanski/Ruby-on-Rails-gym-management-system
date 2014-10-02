
# Projekt indywidualny,
# Małgorzata Szwed
# 2 rok
# Nr indeksu: 69826
# Elektroniczny system obsługi siłowni: Twoja siłownia, online
# 16 września 2014
#
# Plik został zmodyfikowany/utworzony na cele uczelniane/potrzeby projektu.


class ActivityRecord3sController < ApplicationController
  before_action :set_activity_record3, only: [:show, :edit, :update, :destroy]

  # GET /activity_record3s
  # GET /activity_record3s.json
  def index
    @activity_record3s = ActivityRecord3.all
  end

  # GET /activity_record3s/1
  # GET /activity_record3s/1.json
  def show
  end

  # GET /activity_record3s/new
  def new
    @coaches_emails = Coach.all.select("email").map(&:email)
    @activity_record3 = ActivityRecord3.new
    @users = User.where("email NOT IN (?)", @coaches_emails)
    @weekdays = Weekday.all
    @activities = Activity.all
    @coaches = Coach.all
  end

  # GET /activity_record3s/1/edit
  def edit
  end

  # POST /activity_record3s
  # POST /activity_record3s.json
  def create
    @activity_record3 = ActivityRecord3.new(activity_record3_params)

    # Rails.logger = Logger.new(STDOUT)
    # Rails.logger = Log4r::Logger.new("Application Log")

    respond_to do |format|
      if @activity_record3.save
        format.html { redirect_to @activity_record3, notice: 'Activity record3 was successfully created.' }
        format.json { render action: 'show', status: :created, location: @activity_record3 }
      else
        format.html { render action: 'new' }
        format.json { render json: @activity_record3.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /activity_record3s/1
  # PATCH/PUT /activity_record3s/1.json
  def update
    respond_to do |format|
      if @activity_record3.update(activity_record3_params)
        format.html { redirect_to @activity_record3, notice: 'Activity record3 was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @activity_record3.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /activity_record3s/1
  # DELETE /activity_record3s/1.json
  def destroy
    @activity_record3.destroy
    respond_to do |format|
      format.html { redirect_to activity_record3s_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_activity_record3
      @activity_record3 = ActivityRecord3.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def activity_record3_params
      params.require(:activity_record3).permit(:user_id, :coach_id, :weekday_id, :start_time, :activity_id)
    end
end
