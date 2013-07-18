# == Schema Information
#
# Table name: categories
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  definition :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class Category < ActiveRecord::Base
	
  validates :name, :definition, presence: true
  
  has_many :knowledges
  has_many :answers
	
end
