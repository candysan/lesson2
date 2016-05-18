class Product < ActiveRecord::Base
	has_many :reviews

	acts_as_taggable_on :labels # post.label_list が追加される
  　acts_as_taggable            # acts_as_taggable_on :tags のエイリアス
end
