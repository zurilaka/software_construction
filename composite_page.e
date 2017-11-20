note
	description: "Summary description for {COMPOSITE_PAGE}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	COMPOSITE_PAGE

inherit
	COMPONENT

create
	make

feature
	-- Create a new page
	make (a_name: STRING)
		require
			a_name.count > 0
		do
			name := a_name
			create {LINKED_LIST [COMPONENT]} entries.make
		end



	-- Returns the total size of all COMPONENTS within this page
	size: INTEGER
		do
			Result := 0
			from
				entries.start
			until
				entries.off
			loop
				Result := Result + entries.item.size
				entries.forth
			end
		end

	-- Add a new element to this page
	add_entry (c: COMPONENT)
		do
			entries.extend (c)
		ensure
			entries.count = old entries.count + 1
		end



	-- Accept a visitor for visiting this folder
	accept(a_visitor: VISITOR)
		do
			a_visitor.visit_page (Current)
		end


feature

	-- The page elements
	entries: LIST [COMPONENT]

end


