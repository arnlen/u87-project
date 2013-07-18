# == Schema Information
#
# Table name: talks
#
#  id              :integer          not null, primary key
#  speaker         :string(255)
#  sentence        :string(255)
#  conversation_id :integer
#  question        :boolean
#  exclamation     :boolean
#  knowledge       :boolean
#  subject         :string(255)
#  verb            :string(255)
#  complement      :string(255)
#  adjective       :string(255)
#  time            :string(255)
#  time_precision  :string(255)
#  answer_template :string(255)
#  created_at      :datetime
#  updated_at      :datetime
#

class Talk < ActiveRecord::Base
	
	validates :speaker, :sentence, :conversation_id, :subject, :verb, presence: true
  
  belongs_to :conversation
  
  has_many :knowledges
	
end
