class List < ActiveRecord::Base
	belongs_to :user

	# validates :item_one, presence: true

	def title
		# binding.pry
		todays_post = (self.created_at + 1.day).at_beginning_of_day == Time.zone.now.at_beginning_of_day

		if todays_post
			new_title = "Today's Todo List"
			new_title
		elsif self.format == 0  # Friday 02 October 2015 
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

	def self.today
    a = where("created_at >= ?", Time.zone.now.beginning_of_day)
    if a.empty? == true
    	true
    else
    	false
    end
  end

  def editable
		#binding.pry
  	if self.created_at > Time.zone.now.at_beginning_of_day
  		true
  	else
  		false
  	end
  end

  def is_completed
  	if self.completed == true
  		true
  	else
  		false
  	end
  end
	
end





