class Job < ActiveRecord::Base
  belongs_to :user
  validates :company_name, :presence => true
  has_many :notes
  #default_scope -> { order(created_at: :desc) }
end
