class Movie < ActiveRecord::Base

  has_many :reviews, dependent: :destroy

  # validates :name, presence: true
  # validates :name, uniqueness: true
  # validates :name, length: { in: 2..255 }

end
