class ProductsController < ApplicationController
before_action :move_to_index, except: :index

	def index
		@products = Product.all
	end

    def show
	    @product = Product.find(params[:id])
	end

	def search
	  @products = Product.where('title LIKE(?), "%#{params[:keyword]}%"').limit(10)
	end

	def category
	   @tags = Product.where(params[:category])
	end

	private
    def move_to_index
      redirect_to action: :index unless user_signed_in?
      # indexアクションを強制的に実行する
    end

end
