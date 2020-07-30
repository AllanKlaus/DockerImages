# Mudança nas assinaturas de metodos com positional and keyword arguments
# Importante vai ser removido no ruby 3.0

def named_keywords(key: 42)
  p key
end; 
named_keywords({key: 42})   # warned
named_keywords(**{key: 42}) # OK

def keywords(**kw)
  p kw
end
keywords({key: 42})   # warned
keywords(**{key: 42}) # OK

def positional_and_named_keywords(h={}, key: 42)
  p h, key
end
positional_and_named_keywords("key" => 43, key: 42)   # warned
positional_and_named_keywords({"key" => 43, key: 42}) # warned
positional_and_named_keywords({"key" => 43}, key: 42) # OK


# Operador de referência

# Before
roots = [1, 4, 9].map(&Math.method(:sqrt))

# After
roots = [1, 4, 9].map(&Math.:sqrt)

# Chamar metodo privado no `self` agora é permitido

class MyClass
  def my_method
    self.my_attribute = 123 # allowed
    self.my_attribute # raises
  end

  private

  attr_accessor :my_attribute
end

MyClass.new.my_method