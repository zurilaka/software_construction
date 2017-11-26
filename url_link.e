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
    -- Add a new URL link

    URL:STRING

    make(URL_link_name:STRING;URL_input:STRING)

	    require
	    	name_given:not URL_link_name.is_empty
	    	URL_provided: not URL_input.is_empty


        do
        	name:=URL_link_name
        	URL:=URL_input

        ensure
        	name_assigned:not name.is_empty
        	name_assigned_correctly: name=URL_link_name

        	URL_assigned: not URL.is_empty
        	URL_assigned_correctly:URL=URL_input


        end




feature
    --Accept a visitor

    accept (a_visitor: VISITOR)
		do
			a_visitor.visit_URLLink (Current)
     	end

end
