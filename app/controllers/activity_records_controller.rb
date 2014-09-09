class ActivityRecordsController < ApplicationController
  before_action :set_activity_record, only: [:show, :edit, :update, :destroy]

  # GET /activity_records
  # GET /activity_records.json
  def index
    @activity_records = ActivityRecord.all
  end

  # GET /activity_records/1
  # GET /activity_records/1.json
  def show
  end

  # GET /activity_records/new
  def new
    @activity_record = ActivityRecord.new
  end

  # GET /activity_records/1/edit
  def edit
  end

  # POST /activity_records
  # POST /activity_records.json
  def create
    @activity_record = ActivityRecord.new(activity_record_params)

    respond_to do |format|
      if @activity_record.save
        format.html { redirect_to @activity_record, notice: 'Activity record was successfully created.' }
        format.json { render action: 'show', status: :created, location: @activity_record }
      else
        format.html { render action: 'new' }
        format.json { render json: @activity_record.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /activity_records/1
  # PATCH/PUT /activity_records/1.json
  def update
    respond_to do |format|
      if @activity_record.update(activity_record_params)
        format.html { redirect_to @activity_record, notice: 'Activity record was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @activity_record.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /activity_records/1
  # DELETE /activity_records/1.json
  def destroy
    @activity_record.destroy
    respond_to do |format|
      format.html { redirect_to activity_records_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_activity_record
      @activity_record = ActivityRecord.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def activity_record_params
      params.require(:activity_record).permit(:activity_id, :coach_id_integer, :user_id)
    end
end
