class User < ApplicationRecord

  has_many :bugs

  validates :type, presence: true 

  TYPE = ['Developer', 'QA']

  # Include default devise modules. Others available are:
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :confirmable, :trackable

end

