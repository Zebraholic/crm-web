class Contact

	attr_accessor :id, :first_name, :last_name, :email, :note

	def initialize(first_name, last_name, email, notes)
		@first_name = first_name
		@last_name = last_name
		@email = email
		@notes = notes
	end
end

#This class stores information for an individual contact.
#Note: id initialized in Rolodex.rb.