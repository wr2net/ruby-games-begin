def da_boas_vindas
  puts "###########################################################\n"
  puts "#            Bem vindo ao jogo da adivinhação             #\n"
  puts "#            Qual é o seu nome?                           #\n"
  puts "###########################################################\n\n"
  nome = gets.strip
  puts "\nComeçaremos o jogo para você, #{nome}!\n"
  nome
end

def pede_dificuldade
  puts "Qual o nível de dificuldade que deseja?\n"
  puts "1. Fácil"
  puts "2. Não tão Fácil"
  puts "3. Mẽdio"
  puts "4. Difícil"
  puts "5. Muito Difícil"
  gets.to_i
end

def sorteia_numero_secreto(dificuldade)
  case dificuldade
  when 1
    maximo = 30
  when 2
    maximo = 60
  when 3
    maximo = 100
  when 4
    maximo = 150
  else
    maximo = 200
  end

  sorteado = rand(maximo) + 1
  puts "Escolhendo um número secrente entre 1 e #{maximo}...\n"
  puts "Escolhido... que tal adivihar hoje nosso número secreto?\n"
  puts "-----------------------------------------------------------\n\n"
  sorteado
end

def pede_um_numero(chutes, tentativa, limite_tentativas)
  puts "Tentativa #{tentativa} de #{limite_tentativas}\n"

  if chutes.length > 0
    puts "Chutes até agora: "
    for chute in chutes
      puts chute
    end
  end
  puts "Entre com o número\n"
  chute = gets.strip
  puts "Será que acertou? Você chutou #{chute}\n"
  chute.to_i
end

def verifica_se_acertou(chute, numero_secreto, limite_tentativas, chutes)
  acertou = chute == numero_secreto

  if limite_tentativas == chutes.length && !acertou
    puts " :( Infelizmente você não acertou e suas tentativas acabaram."
    puts "Tente novamente!"
    return true
  end

  if acertou
    puts " :D Acertou!"
    return true
  end

  maior = numero_secreto > chute
  if maior
    puts "\n>> O número secreto é maior! <<\n"
  else
    puts "\n>> O número secreto é menor <<\n"
  end
  false
end

def jogar(jogador, dificuldade)
  numero_secreto = sorteia_numero_secreto dificuldade
  pontos_ate_agora = 1000
  limite_tentativas = 5
  chutes = []

  for tentativa in 1..limite_tentativas
    chute = pede_um_numero chutes, tentativa, limite_tentativas
    chutes << chute

    if jogador == "Wagner"
      puts " :D Acertou!"
      break
    end

    pontos_a_perder = (chute - numero_secreto).abs / 2.0
    pontos_ate_agora -= pontos_a_perder

    acertou = verifica_se_acertou chute, numero_secreto, limite_tentativas, chutes
    break if acertou
  end

  puts "Você ganhou #{pontos_ate_agora} pontos."
end

def nao_quer_jogar?
  puts "Deseja jogar novamente? (S/N)"
  quero_jogar = gets.strip
  quero_jogar.upcase == "N"
end

jogador = da_boas_vindas
dificuldade = pede_dificuldade


loop do
  jogar jogador, dificuldade
  if nao_quer_jogar?
    break
  end
end