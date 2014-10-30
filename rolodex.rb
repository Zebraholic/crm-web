class Rolodex

  attr_reader :contacts

  def initialize
    @contacts = []
    @id = 10000
  end

  def add_contact(contact)
    contact.id = @id
    @contacts << contact
    @id += 1
  end

  def find(contact_id)
    @contacts.find {|contact| contact.id == contact_id }
  end

end

#This class creates unqiue id's and stores information on all our contacts.