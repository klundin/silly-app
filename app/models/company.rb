class Company < ActiveRecord::Base
  belongs_to :user
  has_many :reviews
  validates :companydesc, length: { maximum: 600}
  validates :companyname, uniqueness: true
end
