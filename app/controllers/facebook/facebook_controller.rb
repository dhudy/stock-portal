require 'net/http'
class Facebook::FacebookController < ApplicationController
  def post
    #Handle posting the post to facebook
    puts "Retrieved the post request"
    redirect_to '/dashing/dashboards'
  end

  def feed
    http = Net::HTTP.new("graph.facebook.com")
    response = http.request(Net::HTTP::Get.new("/#{current_user.uid}/feed", { access_token: current_user.auth_token}))
    puts "%%%% #{response.inspect } %%%"
    redirect_to '/dashing/dashboards'
  end
end
