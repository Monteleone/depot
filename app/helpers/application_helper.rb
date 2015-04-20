module ApplicationHelper

	def hidden_div_if(condiction, attributes = {}, &block)
		if condiction
			attributes["style"] = "display: none"
		end
		content_tag("div", attributes, &block)
	end	

end
