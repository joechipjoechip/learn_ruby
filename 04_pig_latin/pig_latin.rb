def translate(words)

  result = ''
  resultArr = []

  phrase = words.split(' ')

  if phrase.size === 1

    result = dispatcher(phrase[0])

  else

    phrase.each do |word|

      resultArr << dispatcher(word)

    end

    result = resultArr.join(' ')

  end

  return result

end



# -----


def dispatcher(word)
  isThereVoyelle = voyelle_check(word)

  if isThereVoyelle
    result = voyelle_replace(word)
  else
    result = consonne_replace(word)
  end

  return result
end



# -----

def voyelle_check(word)
  voyelles = ['a', 'e', 'i', 'o', 'u', 'y']

  voyelles.each do |voyelle|

    if voyelle === word[0]
      return true
    end

  end

  return false
end

# -----


def voyelle_replace(word)
  result = "#{word}ay"
  return result
end


# -----

def consonne_replace(word)

  arr = word.split('')
  i = 0
  voyelle_spotted = false
  consonnes = []
  nb_consonne = 0


  while i < word.size && !voyelle_spotted do
    
    if !voyelle_check(word[i])
      if word[i] === "q" && word[i + 1] === "u"
        consonnes << word[i]
        consonnes << word[i + 1]
        voyelle_spotted = true
      else
        consonnes << word[i]
      end
    else
      voyelle_spotted = true
    end

    i = i + 1

  end


  nb_consonne = consonnes.size

  consonnes = consonnes.join

  arr = arr.drop(nb_consonne)

  arr = arr.join + consonnes + "ay"

  return arr
end











