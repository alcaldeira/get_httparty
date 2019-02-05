Dado("que eu informe o cep {string}") do |cep|
@cep = cep
puts @cep
end

Quando("efetuar a requisição na API get") do
    @result = HTTParty.get("https://viacep.com.br/ws/#{@cep}/json/")
end

Então("é retornado o cep {string}") do |cep|
    @resCep = cep
    @endereco = @result.parsed_response
    puts @endereco
    expect(@endereco['cep']).to eq(@resCep)
end