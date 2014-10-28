require_relative 'rolodex'
require_relative 'contact'
require 'sinatra'


get '/' do
	@crm_app_name = "My CRM"
	erb :index
end

get '/contacts' do
	@contacts = []
  @contacts << Contact.new("Rob", "Tavares", "rob@roberttavares.com", "Mad Props")
  @contacts << Contact.new("Kill", "Bill", "kill@bill.com", "Co-Founder")
  @contacts << Contact.new("Anne", "Hathaway", "anne@hathaway.com", "Instructor")

	erb :contacts
end