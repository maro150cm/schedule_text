class CoursesController < ApplicationController
before_action :set_course, only: [:edit, :update,:destroy]
    def index
        @courses = Course.all
    end
    def new
        @course = Course.new
    end
    def create
        @course = Course.new(course_params)
        if @course.save
            redirect_to courses_path
        else
            render :new
        end
    end
    def update
        if @course.update(course_params)
            redirect_to courses_path
        else
            render :edit
        end
    end
    def destroy
        @course.destroy
        redirect_to courses_path
    end
    def edit
    end
    private
        def set_course
            @course = course.find(params[:id])
        end
        def course_params
            params.require(:course).permit(:course_id,:course_name,:learn_point,:teacher_name,:partweek_id,:partdate_id)
        end
end
