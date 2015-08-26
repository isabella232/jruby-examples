require "java"
$CLASSPATH << File.join(File.dirname(__FILE__),  "jruby-ext", "target", "classes")

require "com/purbon/basic"


##
# Using a class created in the jruby side, this class has for example a method with aliases, etc.
##
bar = Bar.new

##
# Calling a method form the class that has two names, throw aliases. This method return a simple
# string from the java side.
##
puts bar.say
puts bar.shout

##
# Using a module defined in the extensione.
# Foo is a module defined in jruby extension point.
##
class MyRubyClass
  include Foo
end

##
# Using a method defined in the module, but form the created class.
##
puts MyRubyClass.new.build_string
##
# Using the same method but as static method defined in the module.
##
puts Foo.build_string
