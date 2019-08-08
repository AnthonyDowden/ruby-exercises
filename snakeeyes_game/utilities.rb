class Utilities
	def is_number?(value)
		begin
			Integer(value)
			return true
		rescue
			return false
		end
	end
end
