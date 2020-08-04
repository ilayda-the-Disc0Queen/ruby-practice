require "singleton"

class Shop
  include Singleton
end

# my_shop = Shop.new NoMethodError as you can't make any new Shop instances
p Shop.instance
p Shop.instance
p Shop.instance
# it is always the same object because the object_id never changes
