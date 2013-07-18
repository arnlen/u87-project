# == Schema Information
#
# Table name: conversations
#
#  id              :integer          not null, primary key
#  interlocutor_id :integer
#  ip              :string(255)
#  reviewed_at     :datetime
#  subjects        :hstore
#  created_at      :datetime
#  updated_at      :datetime
#

class Conversation < ActiveRecord::Base
	
  validates :interlocutor_id, :ip, presence: true
  
  belongs_to :interlocutor
  
  has_many :talks
	
end
