#write your code here
def echo(something)
  return something
end


def shout(something)
  return something.upcase
end


def repeat something, *x

  if x.size < 1
    result = "#{something} #{something}"
  else
    result = "#{something}"
    # result = ''
    (x[0] - 1).times do
      result = result + " #{something}"
    end
  end

  # return nil

  return result
end

puts repeat('hey', 4)


def start_of_word(something, x)

  something = something.split('')

  result = []

  x.times.with_index do |val, index|
    result << something[index]
  end

  return result.join

end


def first_word(something)
  return something.split(' ')[0]
end

def titleize(something)

  something = something.downcase

  if !something.match(/\s/)
    result = something.capitalize
  else

    arr = something.split(' ')
    little_words = ["and", 'i', "the", 'it', 'over', 'fuck']
    result = []
    mot_modif = ''

    arr.each.with_index do |val, index|

      switched = false

      little_words.each.with_index do |little_word, index|
        
        if !switched

          if little_word === val
            mot_modif = val
            switched = true
          else
            mot_modif = val.capitalize
          end

        end

      end

      result << mot_modif

    end
    result[0] = result[0].capitalize
    result = result.join(' ')
  end

  return result
end






