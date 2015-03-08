require 'net/http'
class Facebook::FacebookController < ApplicationController
  def post
    #Handle posting the post to facebook
    puts "Retrieved the post request"
    redirect_to '/dashing/dashboards'
  end

  def feed
    @graph = Koala::Facebook::API.new(current_user.access_token)
    profile = @graph.get_object("me")
    puts "$$$$$ #{profile.inspect}"
    redirect_to '/dashing/dashboards'
  end
end
