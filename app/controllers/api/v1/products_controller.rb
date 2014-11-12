class Api::V1::ProductsController < ApplicationController

  respond_to :json

  def index

    @all= Product.all

    respond_to do |format|
      format.html
      format.json { render :json => @all}
    end

    # @comments = Comment.all
    #
    # @all.each { |a|
    #   if a[:comm].nil?
    #   else
    #     a[:comm] = a[:comm].split(",")
    #     a.attributes[:visited] = 123
    #   end
    # }

    #response = { :products => @all.as_json(include: [comments: {only:[:id]}]), :comments => @comments}
    #  response = { :products => @all, :comments => @comments}
    #
    # respond_to do |format|
    #   format.json { render :json => response  }
    # end

    # arr = [{id: '4',title: "api", price: 77,description: "12",image: "/images/api.jpg"},
    #        {id: '5',title: "test", price: 77,description: "12",image: "/images/test.jpg", comments: [1,2]}]
   # @comments = Comment.all
   # response = { :products => @all, :comments => @comments}
   # respond_to do |format|
   #    format.json  { render :json => response }
   # end
  end

  def show
    # @product = Product.find(params[:id])
    # @comments = Product.find(params[:id]).comments
    # response = { :products => @product, :comments => @comments }
    # respond_to do |format|
    #   format.json  { render :json => response }
    # end
    respond_with Product.find(params[:id])
  end

  private

  def product_params
    params.require(:product).permit(:title, :price, :description, :image, :comm, :isOnSale)
  end


end