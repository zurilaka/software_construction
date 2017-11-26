note
	description: "Summary description for {ANCHOR_LINK}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	ANCHOR_LINK
inherit
	COMPONENT

create
	make

feature
    -- Add a new anchor link
    target_name:STRING
    


    make(anchor_name: STRING;a_target:COMPONENT)

	    require
	    	name_given:not anchor_name.is_empty

	    	target_exist:not a_target.name.is_empty

        do
            name:=anchor_name

            target_name:= a_target.name


            target:=a_target
        ensure
        	name_assigned:not name.is_empty
        	name_assigned_correctly: name=anchor_name
        	target_assigned:not target_name.is_empty
        	target_assigned_correctly: target_name= a_target.name


        end




feature
    --Accept a visitor

    accept (a_visitor: VISITOR)
		do
			a_visitor.visit_AnchorLink (Current)
		end

feature
	--The target element we link to

	target: COMPONENT



end
