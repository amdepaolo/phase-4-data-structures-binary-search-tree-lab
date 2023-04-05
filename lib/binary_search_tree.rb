require_relative './node'

class BinarySearchTree
  attr_accessor :root

  def initialize(root = nil)
    @root = root
  end

  def search(value)
    node_to_check = @root
    while node_to_check
      if node_to_check.value == value
        return node_to_check
      elsif value > node_to_check.value
        node_to_check = node_to_check.right
      else value < node_to_check.value
        node_to_check = node_to_check.left
      end
    end

    return nil
  end

  def insert(value)
    if @root.nil?
      @root = Node.new(value)
      return @root
    end

    if self.search(value)
      return nil
    end

    node_to_check = @root

    while node_to_check
      if node_to_check.value > value
        if node_to_check.left.nil?
          node_to_check.left = Node.new(value)
          return node_to_check.left
        else 
          node_to_check = node_to_check.left
        end
      elsif node_to_check.value < value
        if node_to_check.right.nil?
          node_to_check.right = Node.new(value)
          return node_to_check.right
        else
          node_to_check = node_to_check.right
        end
      end
    end
  end

end 
