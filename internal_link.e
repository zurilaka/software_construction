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

    make(linkname:STRING;a_target:COMPONENT)

	    require
	    	linkname.count>0

        do

            target_name:= a_target.name
            target:=a_target

        end

feature
	--Return the size of the linked element
	size:INTEGER

	   do
	   	   Result:=target.size
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



