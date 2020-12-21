# frozen_string_literal: true

require_relative "../http/http_calls.rb"

class HistoryAPIS
  @@url = "#{ENVDATA["urls"]["bot_api"]}/History"
  @@token = HttpCalls.get_token

  def start(body, fenixtoken = @@token)
    uri = "#{@@url}/Start"
    number = SecureRandom.random_number(999_999_999).to_s
    header_value = { "Authorization" => fenixtoken.to_s, "Customer-Fingerprint" => number, "Content-Type" => "application/json", "Accept" => "application/json", "AgentName" => "", "User-Agent" => "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.86 Safari/537.36" }
    response = generic_request("post", uri, header_value, body.to_json)
    array_data = {}
    array_data[:code] = response.code
    array_data[:session] = response.parsed_response
    array_data[:fingerprint] = number
    array_data[:username] = body[:properties].select { |value| value[:value] && (value[:key] == "nome_usuario") }[0][:value]
    array_data
  end

  def end(session, username, fingerprint, fenixtoken = @@token)
    uri = "#{@@url}/End"
    header_value = { "Authorization" => fenixtoken, "Customer-Session" => session, "User-Name" => username, "Customer-Fingerprint" => fingerprint, "Content-Type" => "application/json", "Accept" => "application/json" }
    response = generic_request("put", uri, header_value)
  end
end
