class StudentsController < ApplicationController
	before_action :find_student, only: [:edit, :update, :destroy]
	def index
		@students = Student.all
	end

	def new
		@student = Student.new
		@student.time = "3:00PM"
	end

	def create
		@student = Student.new(student_params)
		if @student.save
			redirect_to students_path
		else
			@errors = @student.errors.full_messages
			render :new
		end
	end

	def edit
	end

	def update
		respond_to do |format|
			if @student.update(student_params)
				format.html { redirect_to students_path, notice: 'Student was successfully updated.' }
				format.json { render :show, status: :ok, location: @student }
			else
				format.html { render :edit }
				format.json { render json: @student.errors, status: :unprocessable_entity }
			end
		end
	end

	private

	def find_student
		@student = Student.find_by(id: params[:id])
	end

	def student_params
		params.require(:student).permit(:first_name, :last_initial, :day, :time, :duration)
	end

end