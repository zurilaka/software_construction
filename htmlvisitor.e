note
	description: "Summary description for {HTMLVISITOR}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	HTMLVISITOR

inherit
	VISITOR

create
	make

feature
	make
		do
			
		end
feature
    -- Visit the internal link given
	visit_InternalLink(a_internallink: INTERNAL_LINK)
		local


		do

		end

	-- Visit the anchor link given
	visit_AnchorLink(a_anchorlink: ANCHOR_LINK)

		local
		do

		end

	-- Visit the URL link given
	visit_URLLink(a_urllink: URL_LINK)
		local
		do

		end

    --Visit the page given
    visit_page(a_page: COMPOSITE_PAGE)
		do

		end

end
