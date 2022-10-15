def salva_rank(nome, pontos_totais)
  conteudo = "#{nome}\n#{pontos_totais}"
  File.write "forca/rank.txt", conteudo
end

def ler_rank
  conteudo = File.read "forca/rank.txt"
  conteudo.split "\n"
end

