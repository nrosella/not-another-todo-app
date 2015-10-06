class List < ActiveRecord::Base
	belongs_to :user

	def title
		# binding.pry
		if self.format == 0  # Friday 02 October 2015 
			new_title = self.created_at + 1.day
			new_title.frmt_AA_dd_BB_YY " "
		elsif self.format == 2 # 02/10/2015 - UK
			binding.pry
			new_title = self.created_at + 1.day
			new_title.frmt_dd_mm_YY '/'
		elsif self.format == 3 # 10/02/2015 - US
			new_title = self.created_at + 1.day
			new_title.frmt_mm_dd_YY '/'
		elsif self.format == nil
			new_title = "Placeholder"
		end
	end
	
end
