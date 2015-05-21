class PartdatesController < ApplicationController
    before_action :set_partdate, only: [:edit, :update,:destroy]
    def index
        @partdates = Partdate.all
    end
    def new
        @partdate = Partdate.new
    end
    def create
        @partdate = Partdate.new(partdate_params)
        if @partdate.save
            redirect_to partdates_path
        else
            render :new
        end
    end
    def update
        if @partdate.update(partdate_params)
            redirect_to partdates_path
        else
            render :edit
        end
    end
    def destroy
        @partdate.destroy
        redirect_to partdates_path
    end
    def edit
    end
    private
        def set_partdate
            @partdate = Partdate.find(params[:id])
        end
        def partdate_params
            params.require(:partdate).permit(:part_number, :start_time,:end_time)
        end
end
