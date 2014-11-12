class Api::V1::CommentsController < ApplicationController
  respond_to :json

  def index
    respond_with Comment.all
  end

  def show
    @product = Product.find(params[:id])
    @comments = Product.find(params[:id]).comments
    respond_with @comments
  end

  private

  def product_params
    params.require(:product).permit(:title, :price, :description, :image)
  end


end