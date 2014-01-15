class Info < ActiveRecord::Base
	#validates_presence_of :status
	self.inheritance_column = :_type_disabled
end
