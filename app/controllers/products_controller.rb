class ProductsController < ApplicationController
	before_action :move_to_index, except: :index

	def index
		@products = Product.all
	end

	private
    def move_to_index
      redirect_to action: :index unless user_signed_in?
      # indexアクションを強制的に実行する
    end

end
