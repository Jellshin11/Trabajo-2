class Dessert
  def initialize(name, calories)
    @name
  end
  def healthy?
    calories<200
  end
  def delicious?
    true
  end
end

class JellyBean < Dessert
  def initialize(flavor)
    @name = "#{flavor} jelly bean"
    @calories = 5
    @flavor = flavor
  end
end
