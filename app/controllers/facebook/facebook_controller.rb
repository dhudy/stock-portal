require 'net/http'
class Facebook::FacebookController < ApplicationController
  def post
    #Handle posting the post to facebook
    puts "Retrieved the post request"
    redirect_to '/dashing/dashboards'
  end

  def feed
    @graph = Koala::Facebook::API.new(current_user.auth_token)
    myself = @graph.get_object("me")
    puts "$$$$$ #{myself.inspect}"
    profile = @graph.get_connections("me", "friends")
    profile.each do |friend|
      puts "$$$$$ #{friend.inspect}"
    end
    redirect_to '/dashing/dashboards'
  end
end
