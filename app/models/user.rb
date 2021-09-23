class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  
  # validates_presence_of :first_name, :last_name, :cell_phone
  # validates_length_of :cell_phone, is: 10
  validates :first_name, :last_name, presence: true
  validates :cell_phone, presence: true, length: { is: 10 }
end
