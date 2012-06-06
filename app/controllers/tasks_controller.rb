class TasksController < ApplicationController
	def create
		@meeting = Meeting.find(params[:meeting_id])
		@task = @meeting.tasks.create(params[:task])
		redirect_to meeting_path(@meeting)
	end
end
