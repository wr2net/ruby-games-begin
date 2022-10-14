def da_boas_vindas
  puts "###########################################################\n"
  puts "#            Bem vindo ao jogo da Forca                   #\n"
  puts "#            Qual é o seu nome?                           #\n"
  puts "###########################################################\n\n"
  nome = gets.strip
  puts "\nComeçaremos o jogo para você, #{nome}!\n"
  nome
end

def nao_quer_jogar?
  puts "Deseja jogar novamente? (S/N)"
  quero_jogar = gets.strip
  quero_jogar.upcase == "N"
end

def cabecalho_de_tentativa(chutes, erros, mascara)
  puts "\n\n\n"
  puts "Palavra secreta: #{mascara}"
  puts "Erros até agora: #{erros}"
  puts "Chutes até agora:"
  for chute in chutes
    puts chute
  end
end

def pede_um_chute
  puts "Entre com uma letra ou uma palavra"
  chute = gets.strip
  puts "Será que acertou? Você chutou #{chute}"
  chute
end

def avisa_chute_efetuado chute
  puts "Você já chutou #{chute}"
end

def avisa_letra_nao_encontrada
  puts "letra não encontrada."
end

def avisa_letra_encontrada(total_encontrado)
  puts "Letra encontrada #{total_encontrado} vezes."
end

def avisa_acertou_palavra
  puts "Parabéns! Acertou!"
end

def avisa_errou_palavra
  puts "Que pena... errou"
end

def avisa_pontos(pontos_ate_agora)
  puts "Você ganhou #{pontos_ate_agora} pontos."
end

def avisa_escolhendo_palavra
  puts "Escolhendo uma palavra secreta..."
end

def palavra_escolhida(palavra_secreta)
  puts "Palavra secreta com #{palavra_secreta.size} letras... Boa sorte!"
  palavra_secreta
end