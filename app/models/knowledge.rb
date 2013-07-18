# == Schema Information
#
# Table name: knowledges
#
#  id           :integer          not null, primary key
#  word         :string(255)
#  usage        :string(255)
#  validated_at :datetime
#  talk_id      :integer
#  category_id  :integer
#  created_at   :datetime
#  updated_at   :datetime
#

class Knowledge < ActiveRecord::Base
	
  validates :category_id, :talk_id, :word, presence: true
  
  belongs_to :category
  belongs_to :talk
	
end
