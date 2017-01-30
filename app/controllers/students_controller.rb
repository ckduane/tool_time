class StudentsController < ApplicationController
	before_action :find_student, only: [:edit, :update, :destroy]
	def index
		@students = Student.all
	end

	def edit
	end

	def update
	end

	private

	def find_student
		@student = Student.find_by(id: params[:id])
	end

end