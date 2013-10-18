require "connectify/version"

module Connectify

  def self.request uri, path, format="json", type="GET", params={}
    path_for uri, path, format
    resp = response type, params
    JSON.parse(resp)
  end

  def response type, params
    @response = case type
                when "POST"
                  connection.post "", params
                when "PUT"
                  connection.put "", params
                when "DELETE"
                  connection.delete "", params
                else
                  connection.get "", params
                end
  end

  def self.path_for uri, path, format
    @request_uri = uri + path + ".#{format}"
  end

  def self.connection
    @connection = Faraday.new(:url => @request_uri) do |faraday|
      faraday.request :url_encoded
      faraday.adapter Faraday.default_adapter
    end
  end

end
