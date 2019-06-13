module Stacklike
  attr_reader :stack

  def initialize
    @stack ||= []
  end

  def add_to_stack(object)
    @stack.push(object)
  end

  def take_from_stack
    @stack.pop
  end
end