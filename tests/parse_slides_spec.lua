local parse = require("present")._parse_slides

local eq = assert.are.same

describe("present.parse_slides", function()
	it("should parse an empty file", function()
		eq({
			slides = {
				{
					title = "",
					body = {},
				},
			},
		}, parse({}))
	end)

	it("should parse a file with one slide", function()
		eq({
			slides = {
				{
					title = "# Hello",
					body = { "this is a test" },
				},
			},
		}, parse({ "# Hello", "this is a test" }))
	end)
end)
