local wezterm = require("wezterm")

function checkProcName(procInfo, procName)
	if not procInfo then
		return false
	end
	if string.find(procInfo.name, procName) then
		return true
	end
	for pid, entry in pairs(procInfo.children) do
		if string.find(entry["executable"], procName) then
			return true
		end
	end
	return false
end

return {
	window_decorations = "RESIZE",
	use_ime = true,
	window_background_opacity = 0.8,
	color_scheme = "Catppuccin Mocha",
	font = wezterm.font_with_fallback({
		"JetBrains Mono",
		{ family = "Symbols Nerd Font Mono", scale = 0.8 },
	}),
	use_cap_height_to_scale_fallback_fonts = true,
	font_size = 14,
	scrollback_lines = 10000,
	hide_tab_bar_if_only_one_tab = true,
	default_prog = {
		"/opt/homebrew/bin/fish",
		"-l",
		-- "-c tmux",
		-- "-c zellij",
	},
	keys = {
		{
			key = "t",
			mods = "CMD",
			action = wezterm.action_callback(function(win, pane)
				local procInfo = pane:get_foreground_process_info()
				if checkProcName(procInfo, "tmux") then
					pane:send_text("\x00\x63")
				elseif checkProcName(procInfo, "zellij") then
					pane:send_text("\x02\x63")
				else
					pane:send_text("\x74\x6d\x75\x78\x0a")
				end
			end),
		},
		{
			key = "z",
			mods = "CMD",
			action = wezterm.action_callback(function(win, pane)
				pane:send_text("\x7a\x65\x6c\x6c\x69\x6a\x0a")
			end),
		},
		{
			key = "\t",
			mods = "CTRL",
			action = wezterm.action_callback(function(win, pane)
				local procInfo = pane:get_foreground_process_info()
				if procInfo then
					if checkProcName(procInfo, "tmux") then
						pane:send_text("\x1b\x5b\x31\x3b\x32\x43")
					elseif checkProcName(procInfo, "zellij") then
						pane:send_text("\x02\x6e")
					end
				end
			end),
		},
		{
			key = "\t",
			mods = "CTRL|SHIFT",
			action = wezterm.action_callback(function(win, pane)
				local procInfo = pane:get_foreground_process_info()
				if procInfo then
					if checkProcName(procInfo, "tmux") then
						pane:send_text("\x1b\x5b\x31\x3b\x32\x44")
					elseif checkProcName(procInfo, "zellij") then
						pane:send_text("\x02\x70")
					end
				end
			end),
		},
		{
			key = "s",
			mods = "CMD",
			action = wezterm.action_callback(function(win, pane)
				local procInfo = pane:get_foreground_process_info()
				if procInfo then
					if checkProcName(procInfo, "tmux") then
						pane:send_text("\x00\x2d")
					elseif checkProcName(procInfo, "zellij") then
						pane:send_text("\x10\x64")
					end
				end
			end),
		},
		{
			key = "s",
			mods = "CMD|SHIFT",
			action = wezterm.action_callback(function(win, pane)
				local procInfo = pane:get_foreground_process_info()
				if procInfo then
					if checkProcName(procInfo, "tmux") then
						pane:send_text("\x00\x7c")
					elseif checkProcName(procInfo, "zellij") then
						pane:send_text("\x10\x72")
					end
				end
			end),
		},
		{
			key = "j",
			mods = "CMD",
			action = wezterm.action_callback(function(win, pane)
				local procInfo = pane:get_foreground_process_info()
				if procInfo then
					if checkProcName(procInfo, "tmux") then
						pane:send_text("\x00\x54")
					elseif checkProcName(procInfo, "zellij") then
						pane:send_text("\x77")
					end
				end
			end),
		},
		{
			key = "d",
			mods = "CMD",
			action = wezterm.action_callback(function(win, pane)
				local procInfo = pane:get_foreground_process_info()
				if procInfo then
					if checkProcName(procInfo, "tmux") then
						pane:send_text("\x00\x64")
					elseif checkProcName(procInfo, "zellij") then
						pane:send_text("\x02\x64")
					end
				end
			end),
		},
		{
			key = "l",
			mods = "CMD",
			action = wezterm.action_callback(function(win, pane)
				local procInfo = pane:get_foreground_process_info()
				if procInfo then
					if checkProcName(procInfo, "tmux") then
						pane:send_text("\x00\x0c")
					else
						pane:send_text("\x0c")
					end
				end
			end),
		},
	},
}
