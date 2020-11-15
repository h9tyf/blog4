class Blog < ApplicationRecord
  validates :title, :content,  presence: { message: "必须填"}
  has_many :comments, dependent: :delete_all
  belongs_to :user
end
