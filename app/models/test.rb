class Test < ApplicationRecord
  belongs_to :user
  has_many :questions, dependent: :destroy

  validates :name, presence: true, format: { with: /.+/ }
end
