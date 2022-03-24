A_CONSTANT = 42
p Module.const_get('A_CONSTANT')

zen = 42

class This
end

class That
end

if zen == 42
  p Module.const_get('This').new
else
  p Module.const_get('That').new
end



monk = Class.new
monk.class_eval do
  def zen
    42
  end
end

p Module.const_get('monk').new.zen



class Monk; ZEN = 42; end
p Monk.const_get('ZEN')

ZEN = 42
class Monk; end


p Monk.const_get('ZEN')

def auto_complete(editor)
  editor.cursor.read do |word|
    if editor.template.user_classes.include?(word)
      list = Module.const_get(word.to_s).methods
      build_suggestion(list)
    elsif editor.template.context.methods.include?(word)
      list = editor.template.context.method(word).parameters
      build_suggestion(list)
    elsif word == "\n"
      throw :eol
    end
  end
end

def build_suggestion(list)
  Suggestion.new(list).display
end