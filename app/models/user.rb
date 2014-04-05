class User < ActiveRecord::Base
    has_many :reviews
    validates :name, presence: true, length: {minimum: 3, maximum: 32}
    validates :email, presence: true, uniqueness: true
    
end
