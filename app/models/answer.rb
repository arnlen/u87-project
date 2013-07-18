# == Schema Information
#
# Table name: answers
#
#  id          :integer          not null, primary key
#  category_id :integer
#  sentence    :string(255)
#  created_at  :datetime
#  updated_at  :datetime
#

class Answer < ActiveRecord::Base
	
	belongs_to :category
	
end
