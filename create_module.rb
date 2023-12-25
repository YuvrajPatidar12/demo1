module Runner
  def initialize(hash)
    # {name: hash[:name] }
  end

  def call
    process
    run C
    run A
    run A
  end

  def run(class_name)
    class_name.new({ass: 33}).process
  end

  module InnerRunner
    def run(klass)
    end
  end

  def self.included(base)
    base.extend InnerRunner
  end
end

class A
  include Runner
  #byebug
  def process
    puts 'A'
    {nameA: 'A'}
  end
end

class B
  include Runner
  #byebug
  run A
  def process
    puts 'B'
    {nameB: 'B'}
  end
end

class C < B

  def process
    puts 'C'
    {nameC: 'C'}
  end
end

class D < B
  #byebug
  run C
  def process
    puts 'D'
    {nameD: 'D'}
    super
    #byebug
    run A
  end
end
#byebug
D.new({asd: 33}).()

#output there
# D
# B
# A
# C
# A
# A`
