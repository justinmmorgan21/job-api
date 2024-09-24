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

  def index
    @jobs = Job.all
    render :index
  end
end
