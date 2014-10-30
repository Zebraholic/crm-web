require_relative 'rolodex'
require_relative 'contact'
require 'sinatra'


$rolodex = Rolodex.new

get '/contacts/new' do 
	erb :new_contact
end

# Temporary fake data so that we always find contact with id 1000.
$rolodex.add_contact(Contact.new("Johnny", "Bravo", "johnny@bitmakerlabs.com", "Rockstar"))

get '/' do
	@crm_app_name = "CRM"
	erb :index
end

get '/contacts' do
	erb :contacts
end

get "/contacts/:id" do
  @contact = $rolodex.find(params[:id].to_i)
  if @contact
    erb :show_contact
  else
    raise Sinatra::NotFound
  end
end

post '/contacts' do
  new_contact = Contact.new(params[:first_name], params[:last_name], params[:email], params[:note])
  $rolodex.add_contact(new_contact)
  redirect to('/contacts')
end 