
#Definindo classe dos objetos Dado, cada dado precisa de um número de faces
#Ou seja: d6, d8, d12, d20 e por aí vai.
class Dados
	def initialize (n)
		@lados = n
		@rolagem = 0
		@total = 0
	end
	def rolar (qtd) #incluir uma parâmetro de soma para esse método
		1.upto(qtd) do |rolagem| 
			rolagem = rand(1..@lados)
			@total += rolagem.to_i
			puts rolagem
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
Titulo criado com ASCII Generator => www.network-science.de/ascii

INICIO
puts "Quantas faces tem o dado?"
faces = STDIN.gets.chomp()
novoDado = Dados.new(faces.to_i)

puts <<ROLAR
******* ROLANDO DADOS *******
=============================
ROLAR
loop {
puts "Quantos d#{faces} deseja rolar? (ou prefere 'sair'?)"
quantos = STDIN.gets.chomp()
quantos === "sair"? break : #Se escrever sair, quebra o loop
if quantos.to_i < 1
	puts "Vc precisa rolar um numero"
else
puts "Vc rolou %s dados" %quantos.to_i

jogada = novoDado.rolar(quantos.to_i)
#jogada.maior(quantos.to_i)
end	
}
