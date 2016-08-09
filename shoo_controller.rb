require( "sinatra" )
require( "sinatra/contrib/all" )
require( "pry-byebug" )
require_relative( "./models/shoo" )

get "/shoo/new" do
  erb( :new )
end

post "/shoo" do
  @shoo = Shoo.new( params )
  # @shoo.save()
  erb( :create )
end

get "/shoo" do
  @shoo = Shoo.new( params )
  # erb( :index )
end

get "/shoo" do
  @shoos = Shoos.all()
  erb( :index )
end