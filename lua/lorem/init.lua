local M = {}

-- Default settings
local options = {
	paragraph_length = 50,
	formatter_enabled = true, -- New variable to toggle formatter
	complete_mappings = { "<Tab>", "<CR>" },
	default_lorem_length = 5,
	line_width = 80,
	lorem_text = [[
      Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque tempus vel nisl eget facilisis. Phasellus consectetur bibendum nulla. Vivamus euismod id orci dictum facilisis. Ut eget nisi at orci rhoncus mollis. Aenean pulvinar massa a luctus molestie. Donec tortor libero, pharetra ut urna sit amet, iaculis dignissim sem. Duis id elit id dolor volutpat vulputate.
      Cras consectetur maximus rutrum. In ut semper tellus. Etiam nunc augue, cursus non scelerisque in, pulvinar quis elit. Curabitur ultricies, orci non eleifend viverra, eros est accumsan sapien, in accumsan lacus nibh sit amet felis. Ut eros dui, aliquam posuere lacinia pretium, ultricies ac diam. Praesent vehicula dignissim dolor. Nullam eu metus dapibus, consectetur arcu quis, faucibus est. Sed eu purus sodales, volutpat turpis efficitur, dignissim dui. In rhoncus est cursus efficitur dapibus. Curabitur hendrerit, est at aliquam accumsan, dui lacus ornare mauris, dictum mattis tellus libero eu nulla. Cras varius commodo nisl, in pulvinar urna fermentum id. Vivamus venenatis ac sem non porta. Nam a aliquet turpis, molestie semper tortor. Fusce non molestie lorem, sed facilisis sapien. Sed ut ipsum vitae justo gravida pretium nec ut enim. Phasellus ex nibh, vehicula sed odio sit amet, porta rutrum orci.
      Vivamus sed mi interdum, viverra quam sit amet, varius augue. Fusce a metus quam. Nulla auctor odio interdum nisi ultricies laoreet. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Mauris eu aliquam dui, quis vehicula justo. Sed vel luctus eros. Curabitur lobortis, nisi eget varius auctor, turpis nisl egestas urna, eu feugiat enim nibh ut augue. Curabitur quis leo arcu. Nam semper felis et velit molestie ornare. Aenean euismod, nulla et mattis ultricies, justo nisi vulputate ex, eu auctor lacus sem sed enim. Fusce id mauris at urna viverra iaculis. Integer vel enim scelerisque, scelerisque magna non, hendrerit diam. Maecenas metus nulla, cursus vel imperdiet at, laoreet et tellus. Sed nibh augue, tincidunt vel felis vel, mattis porta sem. Praesent vitae neque in nisi feugiat semper sit amet a dolor.
      Suspendisse eu justo nisi. Fusce tristique, tortor non sollicitudin consectetur, orci erat vestibulum justo, et volutpat purus mauris a dolor. Aenean venenatis egestas lacus, et egestas velit. Nulla sed elementum sem, vel egestas libero. Aenean tempor libero mi, at auctor ex blandit in. Curabitur ac iaculis mauris, fringilla tristique neque. Integer a fermentum nisl. Proin eu nulla pellentesque, volutpat neque sit amet, consequat augue.
      Nullam consequat mi id condimentum elementum. Suspendisse pharetra enim quis nibh fermentum volutpat. Suspendisse congue semper nulla ac tincidunt. Quisque euismod commodo vulputate. In hac habitasse platea dictumst. In tristique lacinia tellus vitae elementum. Sed ligula libero, maximus sit amet ante a, accumsan suscipit tellus. Suspendisse et condimentum dui. Nunc tempus diam a sem blandit, ut mattis enim ornare. Fusce a augue pharetra, faucibus nisl et, venenatis ipsum. Vestibulum elementum, dui sed accumsan rhoncus, felis urna posuere lorem, eu maximus ante velit id odio. Vivamus vulputate sollicitudin nibh in gravida. Cras ut pulvinar nunc. Nulla eget luctus ante, non tristique ipsum. Donec eget posuere.
]],
}

-- Format text to a specific width
local function format_text_by_width(text, width)
	if not options.formatter_enabled then
		return { text } -- If formatter is disabled, return the text as a single unformatted line
	end

	local formatted = {}
	local line = ""

	for word in text:gmatch("%S+") do
		if #line + #word + 1 > width then
			table.insert(formatted, line)
			line = word
		else
			if #line > 0 then
				line = line .. " " .. word
			else
				line = word
			end
		end
	end

	if #line > 0 then
		table.insert(formatted, line)
	end

	return formatted
end

-- Generate Lorem Ipsum text
local function generate_lorem(length)
	local lorem_words = {}
	for word in options.lorem_text:gmatch("%S+") do
		table.insert(lorem_words, word)
	end

	local result = {}
	for i = 1, length do
		table.insert(result, lorem_words[(i - 1) % #lorem_words + 1])
	end

	return table.concat(result, " ")
end

-- Generate paragraphs of Lorem Ipsum text
local function generate_paragraphs(count, length)
	local paragraphs = {}
	for _ = 1, count do
		local paragraph = generate_lorem(length)
		local formatted = format_text_by_width(paragraph, options.line_width)
		table.insert(paragraphs, table.concat(formatted, "\n"))
	end
	return paragraphs
end

-- Main action on "lorem" or "plorem"
local function on_keyword_action()
	local row, col = unpack(vim.api.nvim_win_get_cursor(0)) -- Get cursor position
	local line = vim.api.nvim_get_current_line()

	-- Handle "ploremX"
	local keyword, count = line:match("(plorem)(%d*)$")
	if keyword then
		count = tonumber(count) or 1 -- Default to 1 paragraph if no number is given
		local paragraphs = generate_paragraphs(count, options.paragraph_length)

		-- Split paragraphs into separate lines
		local new_lines = {}
		for _, paragraph in ipairs(paragraphs) do
			for line in paragraph:gmatch("[^\n]+") do
				table.insert(new_lines, line)
			end
			table.insert(new_lines, "") -- Add an empty line between paragraphs
		end

		-- Remove the last empty line if unnecessary
		if #new_lines > 0 and new_lines[#new_lines] == "" then
			table.remove(new_lines)
		end

		-- Append `$` to the last line
		local last_line = new_lines[#new_lines]
		new_lines[#new_lines] = last_line

		-- Remove the current line with the keyword
		vim.api.nvim_buf_set_lines(0, row - 1, row, false, {})

		-- Insert the new lines into the buffer
		vim.api.nvim_buf_set_lines(0, row - 1, row - 1, false, new_lines)

		-- Move the cursor to the `$` position on the last line
		vim.api.nvim_win_set_cursor(0, { row - 1 + #new_lines, #last_line + 2 })
		return
	end

	-- Handle "loremX"
	keyword, count = line:match("(lorem)(%d*)$")
	if keyword then
		count = tonumber(count) or options.default_lorem_length -- Default to 5 words if no count given
		local result = generate_lorem(count)
		local formatted = format_text_by_width(result, options.line_width)

		-- Append `$` to the last line
		local last_line = formatted[#formatted]
		formatted[#formatted] = last_line

		-- Replace the current line with the formatted text
		vim.api.nvim_buf_set_lines(0, row - 1, row, false, formatted)

		-- Move the cursor to the `$` position on the last line
		vim.api.nvim_win_set_cursor(0, { row - 1 + #formatted, #last_line + 2 })
	end
end

-- Setup key mappings
local function setup_mappings()
	local function map_complete(keys)
		for _, key in ipairs(keys) do
			vim.keymap.set("i", key, function()
				local line = vim.api.nvim_get_current_line()
				if line:match("plorem%d*$") or line:match("lorem%d*$") then
					on_keyword_action()
				else
					vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes(key, true, true, true), "n", true)
				end
			end, { buffer = true })
		end
	end

	map_complete(options.complete_mappings)
end

function M.setup(user_options)
	options = vim.tbl_extend("force", options, user_options or {})
	vim.api.nvim_create_autocmd("BufEnter", {
		callback = function()
			setup_mappings()
		end,
	})
end

function M.set_paragraph_length(length)
	options.paragraph_length = tonumber(length) or options.paragraph_length
end

function M.set_lorem_text(text)
	options.lorem_text = text or options.lorem_text
end

function M.set_line_width(width)
	options.line_width = tonumber(width) or options.line_width
end

function M.toggle_formatter(state)
	if state ~= nil then
		options.formatter_enabled = state
	else
		options.formatter_enabled = not options.formatter_enabled
	end
	vim.notify("Formatter " .. (options.formatter_enabled and "enabled" or "disabled"), vim.log.levels.INFO)
end

return M
