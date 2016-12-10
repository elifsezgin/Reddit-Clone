class PostSub < ActiveRecord::Base
  validates :sub, :post, presence: true
  validates :post_id, uniqueness: {scope: :sub_id}

  belongs_to :post
  belongs_to :sub

end
