require 'rest-client'
require 'json'
require_relative "./save.rb"


def RunQuery(query)
  begin
    saveData = Load()
    kibelaTeamId = saveData['teamname']
    kibelaToken = saveData['token']
  rescue => error
    raise "Setup Error."
  end

  url = "https://#{kibelaTeamId}.kibe.la/api/v1"
  variables = {};
  json = {query: query, variables: variables}.to_json;
  res = RestClient.post url, json, {:Authorization => "Bearer #{kibelaToken}", :'Content-Type' => 'application/json'}
  return JSON.parse(res)
end
