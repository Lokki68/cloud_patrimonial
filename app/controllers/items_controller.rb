# frozen_string_literal: true

class ItemsController < ApplicationController
  before_action :find_variable, only: %i[index new create edit update]
  before_action :find_item, only: %i[edit update destroy]

  def index
    @q = Item.ransack(params[:q])
    @items = @q.result(distinct: true).where(user_id: current_user.id)
  end

  def new
    @item = Item.new
  end

  def edit; end

  def create
    @item = Item.new(item_params)
    @item.user_id = current_user.id

    if @item.save
      flash[:notice] = 'Item created successfully'
      redirect_to items_path
    else
      flash[:error] = 'Item creation failed'
      render :new
    end
  end

  def update
    @item.update(item_params)

    if @item.save
      flash[:notice] = 'Item updated successfully'
      redirect_to items_path, notice: 'Item updated successfully'
    else
      render :edit
    end
  end

  def destroy
    return unless @item.destroy

    flash[:success] = 'Item deleted successfully'
    redirect_to items_path
  end

  private

  def item_params
    params.require(:item).permit(:name, :description, :buy_at, :value, :quantity, :category_id)
  end

  def find_item
    @item = Item.find(params[:id])
  end

  def find_variable
    @categories = Category.all if %w[new edit create update].include? params[:action]
    @categories = Item.all.map(&:category).uniq if %w[index].include? params[:action]
  end
end
