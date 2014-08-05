class Registration < ActiveRecord::Base
	after_create :mymail

	before_save :check_values

	def check_values
		Registration.name.downcase!
	end

	def mymail
		UserMailer.my_mail(@Registration).deliver
	end
end
