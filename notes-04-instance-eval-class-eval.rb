# instance_eval

# just like eval... except...
# 1) We can pass it a BLOCK rather than string
# 2) it can take a receiver, unlike eval which is private

# So we can do...

"cat".instance_eval do
  puts self    # "cat"
  puts upcase  # CAT
end

# self is going to be "cat". nice.

# ooh, i can get an instance variable...
# from the outside
t.=Thing.new
puts t.instance_eval { @my_instance_var }

#it's also a way to set self
# so we can then call private methods
# which can't have a receiver at all,
# even "self", weirdly...

# when we use instance_eval
# ruby creates one of those 'ghost' singleton classes
# and that's the receiver.
# just like in episode 1 or 2

#########################################
# class_eval
# can only be called on classes or modules
# name reflects the type of receiver they have, not what they do with method scope stuff

# if i define a method inside the class_eval block
# it becomes an instance method

# class_eval doesn't create a ghost class
# it just shoves the method right in there
# with the normal (instance) methods

# if i wanted a class method, i'd do
# instance_eval on the class.
# Nice. makes sense.


This shit is stupid!
"It still trips me up, even after many years"
Then //why do we use this?//
It's asking for problems
It's not a good way to build a building

# we can create methods on the fly
# without using define_method, which creates a closure for us
# if we don't need the closure, we can just use instance_eval
# and do it as a string:
# 
#  s 

