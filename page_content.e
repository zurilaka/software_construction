note
	description: "Summary description for {PAGE_CONTENT}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	PAGE_CONTENT

create
	make

feature
	-- Initialize the contents
	make
		do
			create {LINKED_LIST [PAIR[STRING]]} entries.make
		end

	-- Add a new content
	add_entry(a_path: STRING; a_content: STRING)
		local
			pair: PAIR[STRING]
		do
			create pair.make (a_path, a_content)
			entries.extend (pair)
		ensure
			entries.count = old entries.count + 1
		end

	-- Get all content
	get_contents: LIST[PAIR[STRING]]
		do
			Result := entries
		end

feature {NONE}
	entries: LIST[PAIR[STRING]]



end
