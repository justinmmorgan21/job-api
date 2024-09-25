class JobsController < ApplicationController
  def job_params
    {
      id: params[:id],
      title: params[:title],
      date_time: params[:date_time],
      duration: params[:duration],
      details: params[:details],
      user_id: params[:user_id],
    }
  end

  def create
    @job = Job.new(job_params)
    if @job.save
      render :show
    else
      render json: {error: @job.errors.full_messages}, status: :unprocessable_entity
    end
  end
  
  def index
    @jobs = Job.all
    render :index
  end
  
  def show
    @job = Job.find_by(id: params[:id])
    render :show
  end
  
  def update
    @job = Job.find_by(id: params[:id])
    @job.id = params[:id] || @job.id,
    @job.title = params[:title] || @job.title,
    @job.date_time = params[:date_time] || @job.date_time,
    @job.duration = params[:duration] || @job.duration,
    @job.details = params[:details] || @job.details,
    @job.user_id = params[:user_id] || @job.user_id,

    if @job.save
      render :show
    else
      render json: {error: @job.errors.full_messages}, status: :unprocessable_entity
    end
  end

  def destroy
    @job = Job.find_by(id: params[:id])
    @job.destroy
    render json: {message: "#{@job.title} job successfully deleted"}
  end
end
