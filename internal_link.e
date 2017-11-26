note
	description: "Summary description for {INTERNAL_LINK}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	INTERNAL_LINK
inherit
	COMPONENT

create
	make

feature
    -- Add a new internal link
    target_name:STRING


    make(internal_link_name:STRING;a_target:COMPONENT)

	    require
	    	name_given:not internal_link_name.is_empty

	    	target_exist:not a_target.name.is_empty


        do
        	name:=internal_link_name

            target_name:= a_target.name

            target:=a_target

        ensure
        	name_assigned:not name.is_empty
        	name_assigned_correctly: name=internal_link_name
        	target_assigned:not target_name.is_empty
        	target_assigned_correctly: target_name= a_target.name


        end



feature
    --Accept a visitor

    accept (a_visitor: VISITOR)
		do
			a_visitor.visit_InternalLink (Current)
		end

feature
	--The target element we link to

	target: COMPONENT
end
