# frozen_string_literal: true

require 'nokogiri'

module HttpCalls
  @@url            = ENVDATA['urls']['fenix']
  @@fenix_user     = ENVDATA['users']['fenix_user']
  @@fenix_password = ENVDATA['users']['fenix_password']

  def self.get_token
    uri = "#{@@url}/services/http/Default.aspx?OpId=Auth.Login"
    body = "UserName=#{@@fenix_user}&Password=#{@@fenix_password}"
    response = without_authentication('post', uri, body, content_type_value = 'application/x-www-form-urlencoded')
    "DT-Fenix-Token #{Nokogiri::Slop(response.body).rsp.token.content}"
  end
end
