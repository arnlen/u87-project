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

require 'spec_helper'

describe Interlocutor do

	before do
		@interlocutor = Interlocutor.new(
			firstname: "foo",
			lastname: "bar",
			last_ip: "1.1.1.1",
			last_conversation_at: Time.now,
			first_ip: "1.1.1.1")
	end
	
	subject {@interlocutor}
	
	# ===========================================
	# ATTR TESTS
	
	it {should respond_to(:firstname)}
	it {should respond_to(:lastname)}
	it {should respond_to(:last_ip)}
	it {should respond_to(:last_conversation_at)}
	it {should respond_to(:first_ip)}
	
	it {should be_valid}
	
	# ===========================================
	# VALIDATIONS TESTS
	
	describe "when firstname is not present" do
		before {@interlocutor.firstname = ""}
		it {should be_valid}
	end
	
	describe "when lastname is not present" do
		before {@interlocutor.lastname = ""}
		it {should be_valid}
	end

	describe "when last_ip is not present" do
		before {@interlocutor.last_ip = ""}
		it {should_not be_valid}
	end
	
	describe "when last_conversation_at is not present" do
		before {@interlocutor.last_conversation_at = ""}
		it {should_not be_valid}
	end

	describe "when first_ip is not present" do
		before {@interlocutor.first_ip = ""}
		it {should_not be_valid}
	end

end
