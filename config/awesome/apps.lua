local filesystem = require('gears.filesystem')

local config_dir = filesystem.get_configuration_dir()
local bin_dir = config_dir .. 'binaries/'


return {

	-- The default applications in keybindings and widgets
	default = {
		terminal 										= 'terminator',                                  -- Terminal Emulator
		text_editor 									= 'vim',                                  -- GUI Text Editor
		web_browser 									= 'firefox',                                -- Web browser
		file_manager 									= 'nautilus',                                -- GUI File manager
		network_manager 								= 'nm-connection-editor',					-- Network manager
		bluetooth_manager 								= 'blueman-manager',						-- Bluetooth manager
		power_manager 									= 'xfce4-power-manager',					-- Power manager
		lock 											= 'awesome-client "_G.show_lockscreen()"',  -- Lockscreen
		quake 											= 'terminator',             -- Quake-like Terminal
		-- You can add more default applications here
	},
	
	-- List of apps to start once on start-up

	run_on_start_up = {


		'blueman-applet',                                                                           -- Bluetooth tray icon
		'mpd',                                                                                      -- Music Server
		'xfce4-power-manager',                                                                      -- Power manager
		'/usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1 &' .. 
		' eval $(gnome-keyring-daemon -s --components=pkcs11,secrets,ssh,gpg)',                 	-- Credential manager
		
		'xrdb $HOME/.Xresources',                                                                   -- Load X Colors
		'nm-applet',                                                                                -- NetworkManager Applet
		'pulseeffects --gapplication-service',                                                      -- Sound Equalizer
	},

	-- List of binaries that will execute a certain task

	bins = {
		full_screenshot = bin_dir .. 'snap full',              					                    -- Full Screenshot
		area_screenshot = bin_dir .. 'snap area',			                                        -- Area Selected Screenshot
		capslock_status = bin_dir .. 'capschecker'													-- Returns CapsLock Status
	}
}

