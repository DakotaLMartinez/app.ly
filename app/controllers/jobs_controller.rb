class JobsController < ApplicationController
  def new
    @job = Job.new
  end

  def create
    @job = current_user.jobs.build(job_params)
    if @job.save
      flash[:success] = "Job record created!"
      redirect_to root_url
    else
      render 'static_pages/home'
    end
  end

  def show
    @job = Job.find(params[:id])
  end

  def edit
    #code
  end

  private
    def job_params
      params.require(:job).permit( :company_name, :location, :role, :source, :contact_name, :contact_email,
                                    :contact_phone, :applied, :date_applied)
    end
end
