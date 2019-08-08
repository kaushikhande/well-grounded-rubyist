class C
end

def C.d 
  p 'here'
end
p C.singleton_methods

c = C.new

class << c
  def a
  end

  def b
  end

  def c
  end

  protected :b
  private :c
end

c.class.d

p c.singleton_methods.sort
