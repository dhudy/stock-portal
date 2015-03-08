require 'net/http'
class Facebook::FacebookController < ApplicationController
  def post
    #Handle posting the post to facebook
    puts "Retrieved the post request"
    redirect_to '/dashing/dashboards'
  end

  def feed
    http = Net::HTTP.new("graph.facebook.com")
    puts "%%%% Requesting graph.facebook.com/#{current_user.uid}/feed %%%"
    response = http.request(Net::HTTP::Get.new("/#{current_user.uid}/feed"))
    puts "------#{response.inspect}"
    redirect_to '/dashing/dashboards'
  end
end
