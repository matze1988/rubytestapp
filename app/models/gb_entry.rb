# == Schema Information
#
# Table name: gb_entries
#
#  id         :integer         not null, primary key
#  name       :string(255)
#  email      :string(255)
#  message    :string(255)
#  created_at :datetime        not null
#  updated_at :datetime        not null
#

class GbEntry < ActiveRecord::Base
  attr_accessible :email, :message, :name, :created_at
  
  validates :name, presence: true, length: { minimum: 3, maximum: 20 }
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, format: { with: VALID_EMAIL_REGEX }
  validates :message, presence: true, length: { minimum: 3 }
end
