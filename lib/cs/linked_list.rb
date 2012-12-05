class LinkedList
	attr_accessor :head

	def initialize
		@head = nil
	end

	def insert(value)
		if @head.nil?
			@head = Node.new(value)
	end

	def dequeue
		tail = get_last_node(@head)
		tail.prv.nxt = nil
		tail.rv = nil
		tail 
	end

	def get_last_node(node)
		if node.nxt
			get_last_node(node.nxt)
		else
			node
		end
	end

	def enqueue(value)
		if @head.nil?
			@head = Node.new(value)
		else
			temp = Node.new(value)
			temp.nxt = head
			@head.prv = temp
			@head = temp
		end

	end


end

