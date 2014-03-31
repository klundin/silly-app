class Review < ActiveRecord::Base
  belongs_to :user
  belongs_to :company
  validates :reviewdesc, length: { maximum: 600}
end
