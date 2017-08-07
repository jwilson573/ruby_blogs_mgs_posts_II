class Blog < ActiveRecord::Base
    has_many :owners
    has_many :posts

    has_many :users, through: :owners
    has_many :user_posts, through: :posts, source: :user_posts

    validates :name, :desc, presence: true
end
