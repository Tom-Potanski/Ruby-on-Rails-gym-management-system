


class ActivityRecord2sController < ApplicationController
  before_action :set_activity_record2, only: [:show, :edit, :update, :destroy]

  # GET /activity_record2s
  # GET /activity_record2s.json
  def index
    @activity_record2s = ActivityRecord2.all
  end

  # GET /activity_record2s/1
  # GET /activity_record2s/1.json
  def show
  end

  # GET /activity_record2s/new
  def new
    @activity_record2 = ActivityRecord2.new
  end

  # GET /activity_record2s/1/edit
  def edit
  end

  # POST /activity_record2s
  # POST /activity_record2s.json
  def create
    @activity_record2 = ActivityRecord2.new(activity_record2_params)

    respond_to do |format|
      if @activity_record2.save
        format.html { redirect_to @activity_record2, notice: 'Activity record2 was successfully created.' }
        format.json { render action: 'show', status: :created, location: @activity_record2 }
      else
        format.html { render action: 'new' }
        format.json { render json: @activity_record2.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /activity_record2s/1
  # PATCH/PUT /activity_record2s/1.json
  def update
    respond_to do |format|
      if @activity_record2.update(activity_record2_params)
        format.html { redirect_to @activity_record2, notice: 'Activity record2 was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @activity_record2.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /activity_record2s/1
  # DELETE /activity_record2s/1.json
  def destroy
    @activity_record2.destroy
    respond_to do |format|
      format.html { redirect_to activity_record2s_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_activity_record2
      @activity_record2 = ActivityRecord2.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def activity_record2_params
      params.require(:activity_record2).permit(:user_id, :coach_id, :weekday_id, :start_time)
    end
end
