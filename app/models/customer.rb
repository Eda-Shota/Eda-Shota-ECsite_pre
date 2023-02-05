class Customer < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
         
  has_many :order
  has_one :cart
  has_many :registered_address
  
  with_options presence: true do
    validates :name
    validates :name_kana, format: { with: /\A[\p{katakana}\p{blank}ー－]+\z/} #,#message: 'はカタカナで入力して下さい。'
    validates :post_code
    validates :address
    validates :telephone_number
    validates :email
    validates :encrypted_password
    validates :is_deleted
  end
end