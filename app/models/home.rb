class Home < ApplicationRecord
  validates :name, presence: true
  validates :email, presence: true
  validates :company, presence: true
  validates :telephone, presence: true
  validates :postnum, presence: true
  validates :address, presence: true
  validates :title, presence: true
  validates :message, presence: true
end
