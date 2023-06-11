class Bug < ApplicationRecord

STATUS = ['New', 'Started', 'Completed']

  belongs_to :user

  validates :title, :description, :priority, :est_days, :status, presence: true

end
