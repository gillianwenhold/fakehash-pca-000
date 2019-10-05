class FakeHashWrapper
  attr_accessor :hash

  def initialize
    @hash = {}
  end

  def []=(key, val)
    @hash[key.to_sym] = val
  end

  def [](key)
    @hash[key.to_sym]
  end

  def keys
    @hash.keys.sort.reverse
  end

  def first_letter(letter)
    @hash.values.select{|val| @hash.key(val)[0] == letter}
  end

  def each
    @hash.each do |h|
      yield(h)
    end
  end
end
