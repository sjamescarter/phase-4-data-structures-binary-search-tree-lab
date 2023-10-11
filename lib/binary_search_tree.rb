require_relative './node'

class BinarySearchTree
  attr_accessor :root

  def initialize(root = nil)
    @root = root
  end

  def search(value)
    current_node = @root
    
    while current_node != nil
      if current_node.value == value
        return current_node
      elsif current_node.value > value
        current_node = current_node.left
      else
        current_node = current_node.right
      end
    end

    nil
  end

  def insert(value)
    node = Node.new(value)
    current_node = @root
    
    if current_node.nil?
      @root = node
    else
      while current_node != nil
        if current_node.value == value
          return current_node
        elsif current_node.value > value
          if current_node.left.nil?
            current_node.left = node
          else
            current_node = current_node.left
          end
        else
          if current_node.right.nil?
            current_node.right = node
          else
            current_node = current_node.right
          end
        end
      end
    end

    node
  end
end 
