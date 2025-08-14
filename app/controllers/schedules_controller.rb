class SchedulesController < ApplicationController
 before_action :authenticate_user!

def index
        if params[:search] == nil
        @schedules = Schedule.all
        elsif params[:search] == ''
        @schedules = Schedule.all
        else
        @schedules = Schedule.where("title LIKE ? ",'%' + params[:search] + '%')
    end   
        
        if params[:tag_ids]
      @schedules = []
      params[:tag_ids].each do |key, value|      
        @schedules += Tag.find_by(name: key).schedules if value == "1"
      end
      @schedules.uniq!
    end
       
        if params[:tag]
      Tag.create(name: params[:tag])
    end

end
 
def new
    @schedules = Schedule.new
  end

  def create
    schedule = Schedule.new(schedule_params)

    schedule.user_id = current_user.id

    if schedule.save!
      redirect_to :action => "index"
    else
      redirect_to :action => "new"
    end
end

def show
    @schedule = Schedule.find(params[:id])
  end  

def edit
    @schedule = Schedule.find(params[:id])
  end

def update
    schedule = Schedule.find(params[:id])
    if schedule.update(schedule_params)
      redirect_to :action => "show", :id => schedule.id
    else
      redirect_to :action => "new"
    end
  end

  def destroy
    schedule = Schedule.find(params[:id])
    schedule.destroy
    redirect_to action: :index
  end

private
def schedule_params
    params.require(:schedule).permit(:image, :title, :cost, :item, :comment, tag_ids: [])
  end

end

