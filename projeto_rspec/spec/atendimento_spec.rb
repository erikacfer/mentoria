require_relative '../lib/api/bot/history_api.rb'
require_relative '../spec/supports/Factories/history_api/history_start.rb'

describe 'Teste de sessão do bot' do
  subject(:atendimento) { HistoryAPIS.new }
  let(:body) { attributes_for(:HistoryStart) }

  it 'Iniciar um atendimento com sucesso' do
    resultado_start = atendimento.start(body)
    expect(resultado_start[:code]).to eq(200)
  end

  it 'finalizar um atendiemtno com sucesso' do
    resultado_start = atendimento.start(body)
    expect(resultado_start[:code]).to eq(200)

    session = resultado_start[:session]
    username = resultado_start[:username]
    fingerprint = resultado_start[:fingerprint]

    resultado_end = atendimento.end(session, username, fingerprint)
    expect(resultado_end.code).to eq(204)
  end

  it 'finalizar um atendimento passando uma session errado' do
    resultado_start = atendimento.start(body)
    expect(resultado_start[:code]).to eq(200)

    username = resultado_start[:username]
    fingerprint = resultado_start[:fingerprint]

    resultado_end = atendimento.end('', username, fingerprint)
  end
end
