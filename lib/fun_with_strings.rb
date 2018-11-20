module FunWithStrings
  def palindrome?
    init=self
    ca1 = init.reverse.downcase
    ca2 = init.downcase

    if ca1 == ca2
      a = true
    else
      a= false
    end
    return a
  end
  def count_words(string)
    fil = string.downcase.gsub(/[^a-zA-Z]/,"")
    c= fil.split("")
    cont = Hash.new
    c.each { |x|
      if(cont.has_key?(x))
        cont[x] += 1;
      else
        cont[x] = 1;
      end
  }
  return cont  
  end
  def anagram_groups
    hash = Hash.new
    init = self
    if init.empty?
      return[]
    end
    s = init.split(/[^\w]/)
    s.each do |x|
      sort = x.split("").sort.join
      if hash[sort] == nil
        hash[sort] = [x]
      else
        hash[sort] << x
      end
  end
  result = []
  hash.each_value do |y|
    result << y
  end
  return result
end
end

# make all the above functions available as instance methods on Strings:

class String
  include FunWithStrings
end
