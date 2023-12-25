module Runner
  def self.included(base)
    base.extend(ClassMethods)
  end
  def call
    process
  end
  module ClassMethods
    def run(klass)
      define_method(:call) do |*args, &block|
        instance = klass.new(*args)
        instance.()
      end
    end
  end
end

class A
  include Runner

  def call
    puts 'A'
    { nameA: 'A' }
  end
end

class B
  include Runner

  run A

  def process
    puts 'B'
    { nameB: 'B' }
  end
end

class C < B
  def process
    puts 'C'
    { nameC: 'C' }
  end
end

class D < B
  run C

  def process
    puts 'D'
    { nameD: 'D' }
    super()
    run A
  end
end

# Create an instance of D and execute its call method
D.new(asd: 33).call


# module Runner
#   def run(class_name, hash)
#     @class_name = class_name
#     @hash = hash
    
#   end
#   def call(class_name)
#     instance = @class.new(hash).()
#     instance.process  
#   end
# end

# class A
#   include Runner

#   def process
#     puts 'A'
#     { nameA: 'A' }
#   end
# end

# class B
#   include Runner
#   run A

#   def process
#     puts 'B'
#     { nameB: 'B' }
#   end
# end

# class C < B
#   def process
#     puts 'C'
#     { nameC: 'C' }
#   end
# end

# class D < B
#   run C

#   def process
#     puts 'D'
#     { nameD: 'D' }
#     super

#     run A
#   end
# end

# D.new({asd: 33}).()
