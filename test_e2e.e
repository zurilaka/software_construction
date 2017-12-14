note
	description: "Summary description for {TEST_E2E}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	TEST_E2E

inherit
	EQA_TEST_SET

feature
	test_make_01
		note
			testing: "covers/End-to-end"
		local
			homepage, page1, page2: PAGE
			I_heading1, I_heading2, I_heading3: HEADING
			I_paragraph1, I_paragraph2, I_paragraph3, I_paragraph4, I_paragraph5: PARAGRAPH
			I_image1: IMAGE
			I_snippet1: SNIPPET
			I_table1: TABLE_
			I_ordered_list1: LIST_ORDERED
			I_unordered_list1: LIST_UNORDERED
			I_anchor1, I_anchor2: ANCHOR
			I_anchor_link1, I_anchor_link2: ANCHOR_LINK
			I_internal_link1: LINK_INTERNAL
			I_external_link1: LINK_EXTERNAL

			get_htmlcode: HTML_VISITOR
			my_array1, my_array2: ARRAYED_LIST [STRING]

		do
			create homepage.make ("Homepage Title", "www.homepage.com")
			create page1.make ("Title Page 1", "subpage 1")
			homepage.add_entry (page1)

			io.put_string ("Thanks for working with our HTML Generator.%NThis is a string of all your subpages, followed by the homepage: %N%N")

			create I_heading1.make ("Homepage Heading", 1)
			homepage.add_entry (I_heading1)
			create I_paragraph1.make ("This is the first HOME paragraph")
			homepage.add_entry (I_paragraph1)
			create I_paragraph2.make ("This is the second HOMEPAGE paragraph")
			homepage.add_entry (I_paragraph2)
			create I_image1.make ("https://i.imgur.com/7PlPaTg.jpg")
			homepage.add_entry (I_image1)
			create I_external_link1.make ("https://i.imgur.com/7PlPaTg.jpg", "Go to external link.")
			homepage.add_entry (I_external_link1)

			create I_heading2.make ("Heading for SUBPAGE", 2)
			page1.add_entry (I_heading2)
			create I_paragraph3.make ("This is the first SUBPAGE paragraph.")
			page1.add_entry (I_paragraph3)
			create I_paragraph4.make ("This is the second SUBPAGE paragraph.")
			page1.add_entry (I_paragraph4)
			create I_snippet1.make ("<p><a href=%"html_images.asp%">HTML Images</a> This is a link to a page on this website.</p>")
			page1.add_entry (I_snippet1)
			create I_anchor2.make ("anchor2")
			page1.add_entry (I_anchor2)



			create my_array1.make (0)
			my_array1.extend("one")
			my_array1.extend("two")
			my_array1.extend("three")

			create my_array2.make (0)

			my_array2.extend("1")
			my_array2.extend("2")
			my_array2.extend("3")

			create page2.make ("Title Page 2", "subpage 2")
			homepage.add_entry (page2)

			create I_anchor1.make ("anchor1")
			page2.add_entry (I_anchor1)

			create I_heading3.make ("Heading for 2. SUBPAGE", 2)
			page2.add_entry (I_heading3)

			create I_paragraph5.make ("This is the first SUBPAGE TWO paragraph")
			page2.add_entry (I_paragraph5)

			create I_ordered_list1.make (my_array1)
			page2.add_entry (I_ordered_list1)

			create I_unordered_list1.make (my_array1)
			page2.add_entry (I_unordered_list1)

			create I_internal_link1.make ("subpage-1", "Read page 1")
			page2.add_entry (I_internal_link1)

			create I_anchor_link1.make ("anchor1", "Go to anchor1")
			page2.add_entry (I_anchor_link1)

			create I_anchor_link2.make ("anchor2", "Go to anchor2")
			page2.add_entry (I_anchor_link2)

			create I_table1.make (my_array2, 3)
			page2.add_entry (I_table1)

			create get_htmlcode.make (homepage)

		end

		test_make_02
		note
			testing: "covers/End-to-end"
		local
			page1: PAGE
			I_heading1: HEADING
			I_paragraph1: PARAGRAPH
			I_image1: IMAGE
			I_snippet1: SNIPPET
			I_table1: TABLE_
			I_ordered_list1: LIST_ORDERED
			I_unordered_list1: LIST_UNORDERED
			I_anchor1: ANCHOR
			I_anchor_link1: ANCHOR_LINK
			I_internal_link1: LINK_INTERNAL
			I_external_link1: LINK_EXTERNAL

			get_htmlcode: HTML_VISITOR
			my_array1, my_array2: ARRAYED_LIST [STRING]

		do
			create page1.make ("Title Page 1", "subpage 1")

			create I_heading1.make ("Page Heading", 1)
			page1.add_entry (I_heading1)
			create I_paragraph1.make ("This is the first paragraph")
			page1.add_entry (I_paragraph1)
			create I_image1.make ("https://i.imgur.com/7PlPaTg.jpg")
			page1.add_entry (I_image1)
			create I_external_link1.make ("https://i.imgur.com/7PlPaTg.jpg", "Go to external link.")
			page1.add_entry (I_external_link1)
			create I_snippet1.make ("<p><a href=%"html_images.asp%">HTML Images</a> This is a link to a page on this website.</p>")
			page1.add_entry (I_snippet1)

			create my_array1.make (0)
			my_array1.extend("one")
			my_array1.extend("two")
			my_array1.extend("three")

			create my_array2.make (0)

			my_array2.extend("1")
			my_array2.extend("2")
			my_array2.extend("3")

			create I_anchor1.make ("anchor1")
			page1.add_entry (I_anchor1)

			create I_ordered_list1.make (my_array1)
			page1.add_entry (I_ordered_list1)

			create I_unordered_list1.make (my_array1)
			page1.add_entry (I_unordered_list1)

			create I_internal_link1.make ("subpage-1", "Read page 1")
			page1.add_entry (I_internal_link1)

			create I_anchor_link1.make ("anchor1", "Go to anchor1")
			page1.add_entry (I_anchor_link1)

			create I_table1.make (my_array2, 3)
			page1.add_entry (I_table1)

			create get_htmlcode.make (page1)


		end

	test_make_03
		note
			testing: "covers/End-to-end"
		local

			markup_lang: HTML_VISITOR
			page1, page2: PAGE
			heading1: HEADING
			paragraph1: PARAGRAPH
			snippet1: SNIPPET
			table1: TABLE_
			olist1: LIST_ORDERED
			ulist1: LIST_UNORDERED
			image1: IMAGE
			ext_link1: LINK_EXTERNAL
			anchor1: ANCHOR
			anchorlink1: ANCHOR_LINK
			int_link1: LINK_INTERNAL
			arr_list1: ARRAYED_LIST [STRING]
		do
			create page1.make ("Homepage", "homepage")
			create heading1.make ("Heading 1", 1)
			page1.add_entry (heading1)
			create paragraph1.make ("Test")
			page1.add_entry (paragraph1)
			create snippet1.make ("<p>This is<br>a paragraph<br>with line breaks.</p>")
			page1.add_entry (snippet1)
			create arr_list1.make (0)
			arr_list1.extend ("one")
			arr_list1.extend ("two")
			arr_list1.extend ("three")
			arr_list1.extend ("four")
			create table1.make (arr_list1, 2)
			page1.add_entry (table1)
			create olist1.make (arr_list1)
			page1.add_entry (olist1)
			create ulist1.make (arr_list1)
			page1.add_entry (ulist1)
			create image1.make ("https://i.imgur.com/7PlPaTg.jpg")
			page1.add_entry (image1)
			create ext_link1.make ("https://www.sbb.ch", "Link to SBB")
			page1.add_entry (ext_link1)
			create anchor1.make ("A1")
			page1.add_entry (anchor1)
			create anchorlink1.make ("A1", "Go to anchor1")
			page1.add_entry (anchorlink1)

			create page2.make ("subpage", "subpage")
			create int_link1.make ("subpage", "go to page 2")
			page1.add_entry (int_link1)

			create markup_lang.make (page1)

			assert("The output is correct", equal(markup_lang.document, "<!DOCTYPE html>%N<html>%N%N<head>%N  <title>Homepage</title>%N  <base href=%"homepage%"/>%N</head>%N%N%N<body>%N <h1>Heading 1</h1>%N  <p>Test</p>%N  <p>This is<br>a paragraph<br>with line breaks.</p>%N<table>%N  <tr>%N   <td>one</td>%N   <td>two</td>%N  </tr>%N  <tr>%N   <td>three</td>%N   <td>four</td>%N  </tr>%N</table>%N  <ol>%N   <li>one</li>%N   <li>two</li>%N   <li>three</li>%N   <li>four</li>%N  </ol>%N  <ul>%N   <li>one</li>%N   <li>two</li>%N   <li>three</li>%N   <li>four</li>%N  </ul>%N  <img src=%"https://i.imgur.com/7PlPaTg.jpg%"><br>%N  <a href=%"https://www.sbb.ch%">Link to SBB</a><br><br>%N  <a name=%"A1%"></a>  <a href=%"#A1%">Go to anchor1</a><br><br>%N  <a href=%"/subpage%">go to page 2</a><br><br>%N</body>%N%N</html>%N%N-------------------------------------------------------%N%N"))

		end

end


