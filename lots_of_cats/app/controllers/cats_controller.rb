class CatsController < ApplicationController

  def index
    @cats = Cat.all

    #render json: @cats
    render :index
  end

  def show
    @cat = Cat.find(params[:id])
    # debugger
    render :show
  end

  def create
    new_cat = Cat.new(cat_params)
    if new_cat.save
      redirect_to cat_url(new_cat)
    else
      render json: new_cat.errors.full_messages, status: :unprocessable_entity
    end  
  end

  def update
    cat = User.find(params[:id])
    if cat.update(cat_params)
      redirect_to cat_url(cat)
    else
      render json: cat.errors.full_messages, status: :unprocessable_entity
    end    
  end

  private

  def cat_params
    params.require(:cat).permit(:name, :sex, :color, :birth_date, :description)
  end
end