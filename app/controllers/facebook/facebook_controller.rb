require 'net/http'
class Facebook::FacebookController < ApplicationController
  def post
    #Handle posting the post to facebook
    puts "Retrieved the post request"
    redirect_to '/dashing/dashboards'
  end

  def feed
    http = Net::HTTP.new("graph.facebook.com")
    req = Net::HTTP::Get.new("/#{current_user.uid}/feed")
    req.add_field('access_token', current_user.auth_token)
    response = http.request(req)
    puts "%%%% #{response.inspect } %%%"
    redirect_to '/dashing/dashboards'
  end
end
