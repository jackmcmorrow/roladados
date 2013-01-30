# coding: UTF-8
#Definindo classe dos objetos Dado, cada dado precisa de um número de faces
#Ou seja: d6, d8, d12, d20 e por aí vai.
class Dados
	def initialize (n)
		@lados = n
		@rolagem = 0
		@total = 0
	end
	def rolar (qtd, somar=false) #incluir uma parâmetro de soma para esse método

		1.upto(qtd) do |rolagem| 
			rolagem = rand(1..@lados)
			@total += rolagem.to_i
			unless somar === true
				puts rolagem
			end
		end
		puts "Total: #{@total}"
		@total = 0
	end
	def maior (qtd)
		@rolagem = []
		1.upto(qtd) do |rola| 
			puts @rolagem += [rand(1..@lados)]
		end
		@rolagem.sort! {|a, b| b <=> a}
		puts 'Maior: ' + @rolagem.take(1).to_s
	end
	def menor (qtd)
		rolagem = []
		1.upto(qtd) {|rolagem| rolagem + [rand(1..@lados)]}
		puts rolagem.sort! {|a, b| a <=> b}
		puts 'Menor: ' + rolagem.take(1)
	end

end

#Criando objetos
puts <<INICIO
                                     
    _/_/_/              _/            
   _/    _/    _/_/    _/    _/_/_/   
  _/_/_/    _/    _/  _/  _/    _/    
 _/    _/  _/    _/  _/  _/    _/     
_/    _/    _/_/    _/    _/_/_/      
                                      
                                      
                                                      
    _/_/_/                    _/                      
   _/    _/    _/_/_/    _/_/_/    _/_/      _/_/_/   
  _/    _/  _/    _/  _/    _/  _/    _/  _/_/        
 _/    _/  _/    _/  _/    _/  _/    _/      _/_/     
_/_/_/      _/_/_/    _/_/_/    _/_/    _/_/_/

por @cav_dan => www.about.me/cav_dan
Título criado com ASCII Generator => www.network-science.de/ascii

INICIO
loop do
	puts "Quantas faces tem o dado?"
	faces = STDIN.gets.chomp()
	unless faces.to_i < 1 then
		@faces = faces
		NovoDado = Dados.new(faces.to_i)
		break
	else
		puts "Use números, por favor."
	end
end


puts <<ROLAR
******* ROLANDO DADOS *******
=============================
ROLAR

sair = false
until sair === true do
	puts "Quantos d#{@faces} deseja rolar? (ou prefere 'sair'?)"
	quantos = STDIN.gets.chomp()
	#Se escrever sair, vai para saída
	if quantos === "sair"
		sair = true
	else
		#Ruby retorna 0 se não conseguir transformar string em integer
		if quantos.to_i < 1 
			puts "Você precisa rolar um numero"
		else
			puts "Você rolou %s dados" %quantos.to_i
			jogada = NovoDado.rolar(quantos.to_i)
			#jogada.maior(quantos.to_i)
		end
	end
end
