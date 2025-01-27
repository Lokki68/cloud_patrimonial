class CategoriesController < ApplicationController
  before_action :find_model, except: %w[index new create]

  def index
    @categories = Category.all
  end

  def new
    @category = Category.new
  end

  def create
    @category = Category.new(permit_params)

    if @category.save
      flash[:success] = 'Catégorie enregistré avec succès'
      redirect_to categories_path
    else
      render :new
    end
  end

  def edit; end

  def update
    @category.update(permit_params)
    if @category.save
      flash[:success] = 'Catégorie modifié avec succès'
      redirect_to categories_path
    else
      render :edit
    end
  end

  def destroy
    return unless @category.destroy

    flash[:success] = 'Catégorie supprimé avec succès'
    redirect_to categories_path
  end

  private

  def permit_params
    params.require(:category).permit(%i[name description color])
  end

  def find_model
    @category = Category.find params[:id]
  end
end
