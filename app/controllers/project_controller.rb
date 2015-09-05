class ProjectController < ApplicationController
  def index
    respond_with project.all
  end

  def create
    respond_with project.create(project_params)
  end

  def show
    respond_with project.find(params[:id])
  end
  def edit

  private
  def project_params
    params.require(:project).permit(:user_id , :title , :description, :is_public )
  end
end
