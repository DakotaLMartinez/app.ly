class Job < ActiveRecord::Base
  belongs_to :user
  has_many :notes, dependent: :destroy
  validates :company_name, :presence => true
  default_scope -> { order(updated_at: :asc) }
end
