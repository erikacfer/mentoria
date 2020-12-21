require_relative "../history_api/history_keys.rb"

FactoryBot.define do
  factory :HistoryStart do
    departmentId { "#{ENVDATA["data_site"]["department_id"]}" }
    keys { [attributes_for(:HistoryKeys, key: "email", value: "#{Faker::Name.name}@hiautomacao.com")] }
    properties { [attributes_for(:HistoryKeys, key: "nome_usuario", value: Faker::Name.name.to_s), attributes_for(:HistoryKeys, key: "email", value: "#{Faker::Name.name}@hiautomacao.com")] }
    subjects { [] }
  end
end
