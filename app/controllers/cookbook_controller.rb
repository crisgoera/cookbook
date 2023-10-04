class CookbookController < ApplicationController
  before_action :authenticate_user!
  
  def index
    @cookbooks = Cookbook.all
  end

  def show
    @cookbook = Cookbook.find(params[:id])
  end

  def new
    @cookbook = Cookbook.new
  end

  def create
  end

  def edit
  end

  def destroy
  end

  def update
  end

  private

  def cookbook_params
    params.require(:cookbook).permit(:id)
  end
end
