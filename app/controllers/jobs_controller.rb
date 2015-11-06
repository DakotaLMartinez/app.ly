class JobsController < ApplicationController
  def index
    @user = current_user
    @jobs = @user.jobs
  end

  def new
    @user = current_user
    @job = @user.jobs.build
  end

  def create
    @user = current_user
    @job = @user.jobs.build(job_params)
    if @job.save
      flash[:success] = "Job record created!"
      redirect_to user_jobs_path @user
    else
      render 'new'
    end
  end

  def show
    @user = current_user
    @job = @user.jobs.find(params[:id])
  end

  def edit
    @job = Job.find(params[:id])
  end

  private
    def job_params
      params.require(:job).permit( :company_name, :location, :role, :source, :contact_name, :contact_email,
                                    :contact_phone, :applied, :date_applied)
    end
end
