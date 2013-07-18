# == Schema Information
#
# Table name: interlocutors
#
#  id                   :integer          not null, primary key
#  firstname            :string(255)
#  lastname             :string(255)
#  last_ip              :string(255)
#  last_conversation_at :datetime
#  first_ip             :string(255)
#  created_at           :datetime
#  updated_at           :datetime
#

class Interlocutor < ActiveRecord::Base
	
  validates :first_ip, :last_ip, :last_conversation_at, presence: true
  
  has_many :conversations
	
end
