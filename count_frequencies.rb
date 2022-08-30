

def count_frequencies(string_qualquer:)
  frequencia_caracteres = {}
  comprimento_da_string = string_qualquer.size

  string_qualquer.each_char do  |letra|
      frequencia_caracteres[letra] = frequencia_caracteres.fetch(letra, 0) + 1
  end

  frequencia_caracteres.each_pair {  |chave, valor| 
    frequencia_caracteres[chave] = valor/comprimento_da_string.to_f
  }
end
