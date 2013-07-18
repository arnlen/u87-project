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

require 'spec_helper'

describe Conversation do

	before do
		@conversation = Conversation.new(
			interlocutor_id: 1,
			ip: "192.168.1.1",
			reviewed_at: Time.now,
			subjects: {test:"test"})
	end
	
	subject {@conversation}
	
	# ===========================================
	# ATTR TESTS
	
	it {should respond_to(:interlocutor_id)}
	it {should respond_to(:ip)}
	it {should respond_to(:reviewed_at)}
	it {should respond_to(:subjects)}
	
	it {should be_valid}
	
	# ===========================================
	# VALIDATIONS TESTS
	
	describe "when interlocutor_id is not present" do
		before {@conversation.interlocutor_id = ""}
		it {should_not be_valid}
	end
	
	describe "when ip is not present" do
		before {@conversation.ip = ""}
		it {should_not be_valid}
	end

	describe "when reviewed_at is not present" do
		before {@conversation.reviewed_at = ""}
		it {should be_valid}
	end
	
	describe "when subjects is not present" do
		before {@conversation.subjects = ""}
		it {should be_valid}
	end

end
