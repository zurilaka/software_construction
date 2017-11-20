note
	description: "Summary description for {VISITOR}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

deferred class
	VISITOR
	
feature

	-- Visit the internal link given
	visit_InternalLink(a_internallink: INTERNAL_LINK)
		deferred
		end

	-- Visit the anchor link given
	visit_AnchorLink(a_anchorlink: ANCHOR_LINK)
		deferred
		end

	-- Visit the URL link given
	visit_URLLink(a_urllink: URL_LINK)
		deferred
		end

    --Visit the page given
    visit_page(a_page: COMPOSITE_PAGE)
		deferred
		end

end
