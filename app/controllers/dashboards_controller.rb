require 'rest-client'

class DashboardsController < ApplicationController

  def index

  end

  def simulate
    data =
        {
            'to' => '/topics/all',
            'data' => {
              'gate' => '1F',
              'locationIds' => ['37.784847:-122.409227', '37.784173:-122.401557']
            }
        }.to_json

    headers = {
        'Authorization': 'key=AIzaSyAgcSS0Nk6crjjwYMJwmhnhvH3Yq7pBClQ',
        content_type: :json,
        accept: :json}

    RestClient.post "https://fcm.googleapis.com/fcm/send", data, headers

    render :nothing => true
  end

  def webhook_listen
    'AIzaSyBBP9hIRe8Re6oHqD_-QBXVK2wyi-Bq9z4'
  end
end
