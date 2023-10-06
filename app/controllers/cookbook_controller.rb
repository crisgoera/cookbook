class CookbookController < ApplicationController
  before_action :authenticate_user!

  def index
    @cookbooks = Cookbook.all
    @new_cookbook = Cookbook.new
  end

  def show
    @cookbook = Cookbook.find(params[:id])
  end

  def new
    @cookbook = Cookbook.new
  end

  def create
    @new_cookbook = Cookbook.new(cookbook_params)
    @new_cookbook.user = current_user
    if @new_cookbook.save
      redirect_to "cookbook#index"
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
  end

  def destroy
  end

  def update
  end

  private

  def cookbook_params
    params.require(:cookbook).permit(:id, :name)
  end
end
