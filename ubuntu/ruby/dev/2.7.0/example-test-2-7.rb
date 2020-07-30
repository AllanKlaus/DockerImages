# Mudança nas assinaturas de metodos com positional and keyword arguments
# Importante vai ser removido no ruby 3.0

def foo(key: 42)
end; 
foo({key: 42})   # warned

def foo(**kw)
end
foo({key: 42})   # warned

def foo(h={}, key: 42)
end
foo("key" => 43, key: 42)   # warned

def foo(h={}, key: 42)
end
foo({"key" => 43, key: 42}) # warned

def foo(key: 42)
end
foo(**{key: 42}) # OK

def foo(**kw)
end
foo(**{key: 42}) # OK

def foo(h={}, key: 42)
end
foo({"key" => 43}, key: 42) # OK


# Operador de referência

# Before
roots = [1, 4, 9].map(&Math.method(:sqrt))

# After
roots = [1, 4, 9].map(&Math.:sqrt)

# Chamar metodo privado no `self` agora é permitido

class Foo
  def foo
    self.bar = 123 # allowed
    self.bar # raises
  end

  private

  attr_accessor :bar
end

Foo.new.foo