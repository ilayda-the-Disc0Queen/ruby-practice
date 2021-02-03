 class TreeNode
  attr_accessor :value, :left, :right

  def initialize(value)
    @value = value
  end
end

tree = TreeNode.new(7)
tree.left = TreeNode.new(5)
tree.right = TreeNode.new(3)
tree.left.left = TreeNode.new(2)
tree.left.right = TreeNode.new(1)
p tree
