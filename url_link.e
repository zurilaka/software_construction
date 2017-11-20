note
	description: "Summary description for {URL_LINK}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	URL_LINK

inherit
	COMPONENT

create
	make

feature
    -- Add a new internal link
    target_name:STRING

    make(a_target:COMPONENT)

	    require
	    	exist:


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
			a_visitor.visit_URLLink (Current)
		end

feature
	--The target element we link to

	target: COMPONENT

end


