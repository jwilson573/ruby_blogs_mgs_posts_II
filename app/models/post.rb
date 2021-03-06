class Post < ActiveRecord::Base
  belongs_to :user
  belongs_to :blog
  has_many :messages

  validates :content, :title, presence: true
end
