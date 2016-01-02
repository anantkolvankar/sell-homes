class Agent < User
	has_one :agent_info
	accepts_nested_attributes_for :agent_info

end