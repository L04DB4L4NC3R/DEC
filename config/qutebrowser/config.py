import dracula.draw

config.load_autoconfig()

dracula.draw.blood(c, {
    'spacing': {
        'vertical': 6,
        'horizontal': 8
    }
})
c.fonts.default_size = '14pt'
c.confirm_quit = ['multiple-tabs', 'downloads']

c.qt.force_platformtheme = None

config.bind("sp", "spawn --userscript qutepocket")

# Open in mpv
c.url.searchengines = {"DEFAULT": "https://duckduckgo.com/?q={}", "aw": "https://wiki.archlinux.org/?search={}", "tor": "https://www.thepìratebay.com/proxy/go.php?url=s/?q={}"}
config.bind("<Ctrl-Shift-m>", "hint links spawn --detach mpv --force-window yes {hint-url}")
config.bind("<Ctrl-m>", "spawn --detach mpv --force-window {url}")

# Download Youtube Videos
config.bind("<Ctrl-d>", "spawn --detach youtube-dl {url} && notify-send Youtube Video Download")
config.bind("<Ctrl-Shift-d>", "hint links spawn --detach youtube-dl {hint-url} && notify-send Youtube Video Downloaded")

c.auto_save.session = True

c.content.autoplay = False

config.set('content.headers.user_agent', 'Mozilla/5.0 ({os_info}) AppleWebKit/{webkit_version} (KHTML, like Gecko) {upstream_browser_key}/{upstream_browser_version} Safari/{webkit_version}', 'https://web.whatsapp.com/')

config.set('content.headers.user_agent', 'Mozilla/5.0 ({os_info}; rv:71.0) Gecko/20100101 Firefox/71.0', 'https://accounts.google.com/*')

config.set('content.headers.user_agent', 'Mozilla/5.0 ({os_info}) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99 Safari/537.36', 'https://*.slack.com/*')

config.set('content.headers.user_agent', 'Mozilla/5.0 ({os_info}; rv:71.0) Gecko/20100101 Firefox/71.0', 'https://docs.google.com/*')

config.set('content.images', True, 'chrome-devtools://*')

config.set('content.images', True, 'devtools://*')

config.set('content.javascript.enabled', True, 'chrome-devtools://*')

config.set('content.javascript.enabled', True, 'devtools://*')

config.set('content.javascript.enabled', True, 'chrome://*/*')

config.set('content.javascript.enabled', True, 'qute://*/*')

c.scrolling.smooth = True

"""
c.colors.completion.fg = '#d5c4a1'

c.colors.completion.odd.bg = '#665c54'

c.colors.completion.even.bg = '#1d2021'

c.colors.completion.category.fg = '#fabd2f'

c.colors.completion.category.bg = '#1d2021'

c.colors.completion.category.border.top = '#1d2021'

c.colors.completion.category.border.bottom = '#1d2021'

c.colors.completion.item.selected.fg = '#3c3836'

c.colors.completion.item.selected.bg = '#fabd2f'

c.colors.completion.item.selected.border.top = '#fabd2f'

c.colors.completion.item.selected.border.bottom = '#fabd2f'

c.colors.completion.item.selected.match.fg = '#fb4934'

c.colors.completion.match.fg = '#b8bb26'

c.colors.completion.scrollbar.fg = '#d5c4a1'

c.colors.completion.scrollbar.bg = '#1d2021'

c.colors.contextmenu.menu.bg = '#1d2021'

c.colors.contextmenu.menu.fg = '#d5c4a1'

c.colors.contextmenu.selected.bg = '#fabd2f'

c.colors.contextmenu.selected.fg = '#3c3836'

c.colors.downloads.bar.bg = '#1d2021'

c.colors.downloads.start.fg = '#1d2021'

c.colors.downloads.start.bg = '#83a598'

c.colors.downloads.stop.fg = '#1d2021'

c.colors.downloads.stop.bg = '#8ec07c'

c.colors.downloads.error.fg = '#fb4934'

c.colors.hints.fg = '#1d2021'

c.colors.hints.bg = '#fabd2f'

c.colors.hints.match.fg = '#d5c4a1'

c.colors.keyhint.fg = '#d5c4a1'

c.colors.keyhint.suffix.fg = '#d5c4a1'

c.colors.keyhint.bg = '#1d2021'

c.colors.messages.error.fg = '#1d2021'

c.colors.messages.error.bg = '#fb4934'

c.colors.messages.error.border = '#fb4934'

c.colors.messages.warning.fg = '#1d2021'

c.colors.messages.warning.bg = '#d3869b'

c.colors.messages.warning.border = '#d3869b'

c.colors.messages.info.fg = '#d5c4a1'

c.colors.messages.info.bg = '#1d2021'

c.colors.messages.info.border = '#1d2021'

c.colors.prompts.fg = '#d5c4a1'

c.colors.prompts.border = '#1d2021'

c.colors.prompts.bg = '#1d2021'

c.colors.prompts.selected.bg = '#fabd2f'

c.colors.statusbar.normal.fg = '#b8bb26'

c.colors.statusbar.normal.bg = '#1d2021'

c.colors.statusbar.insert.fg = '#1d2021'

c.colors.statusbar.insert.bg = '#83a598'

c.colors.statusbar.passthrough.fg = '#1d2021'

c.colors.statusbar.passthrough.bg = '#8ec07c'

c.colors.statusbar.private.fg = '#1d2021'

c.colors.statusbar.private.bg = '#665c54'

c.colors.statusbar.command.fg = '#d5c4a1'

c.colors.statusbar.command.bg = '#1d2021'

c.colors.statusbar.command.private.fg = '#d5c4a1'

c.colors.statusbar.command.private.bg = '#1d2021'

c.colors.statusbar.caret.fg = '#1d2021'

c.colors.statusbar.caret.bg = '#d3869b'

c.colors.statusbar.caret.selection.fg = '#1d2021'

c.colors.statusbar.caret.selection.bg = '#83a598'

c.colors.statusbar.progress.bg = '#83a598'

c.colors.statusbar.url.fg = '#d5c4a1'

c.colors.statusbar.url.error.fg = '#fb4934'

c.colors.statusbar.url.hover.fg = '#d5c4a1'

c.colors.statusbar.url.success.http.fg = '#8ec07c'

c.colors.statusbar.url.success.https.fg = '#b8bb26'

c.colors.statusbar.url.warn.fg = '#d3869b'

c.colors.tabs.bar.bg = '#1d2021'

c.colors.tabs.indicator.start = '#83a598'

c.colors.tabs.indicator.stop = '#8ec07c'

c.colors.tabs.indicator.error = '#fb4934'

c.colors.tabs.odd.fg = '#d5c4a1'

c.colors.tabs.odd.bg = '#665c54'

c.colors.tabs.even.fg = '#d5c4a1'

c.colors.tabs.even.bg = '#1d2021'

c.colors.tabs.selected.odd.fg = '#1d2021'

c.colors.tabs.selected.odd.bg = '#d5c4a1'

c.colors.tabs.selected.even.fg = '#1d2021'

c.colors.tabs.selected.even.bg = '#d5c4a1'

c.colors.tabs.pinned.odd.fg = '#fbf1c7'

c.colors.tabs.pinned.odd.bg = '#b8bb26'

c.colors.tabs.pinned.even.fg = '#fbf1c7'

c.colors.tabs.pinned.even.bg = '#8ec07c'

c.colors.tabs.pinned.selected.odd.fg = '#d3869b'

c.colors.tabs.pinned.selected.odd.bg = '#d5c4a1'

c.colors.tabs.pinned.selected.even.fg = '#1d2021'

c.colors.tabs.pinned.selected.even.bg = '#d5c4a1'

c.fonts.default_size = '14pt'

c.fonts.web.size.default = 18

base00 = "#1d2021"
base01 = "#3c3836"
base02 = "#504945"
base03 = "#665c54"
base04 = "#bdae93"
base05 = "#d5c4a1"
base06 = "#ebdbb2"
base07 = "#fbf1c7"
base08 = "#fb4934"
base09 = "#fe8019"
base0A = "#fabd2f"
base0B = "#b8bb26"
base0C = "#8ec07c"
base0D = "#83a598"
base0E = "#d3869b"
base0F = "#d65d0e"


c.colors.completion.fg = base05

c.colors.completion.odd.bg = base03

c.colors.completion.even.bg = base00

c.colors.completion.category.fg = base0A

c.colors.completion.category.bg = base00

c.colors.completion.category.border.top = base00

c.colors.completion.category.border.bottom = base00

c.colors.completion.item.selected.fg = base01

c.colors.completion.item.selected.bg = base0A

c.colors.completion.item.selected.border.top = base0A

c.colors.completion.item.selected.border.bottom = base0A

c.colors.completion.item.selected.match.fg = base08

c.colors.completion.match.fg = base0B

c.colors.completion.scrollbar.fg = base05

c.colors.completion.scrollbar.bg = base00

c.colors.contextmenu.menu.bg = base00

c.colors.contextmenu.menu.fg =  base05

c.colors.contextmenu.selected.bg = base0A

c.colors.contextmenu.selected.fg = base01

c.colors.downloads.bar.bg = base00

c.colors.downloads.start.fg = base00

c.colors.downloads.start.bg = base0D

c.colors.downloads.stop.fg = base00

c.colors.downloads.stop.bg = base0C

c.colors.downloads.error.fg = base08

c.colors.hints.fg = base00

c.colors.hints.bg = base0A

c.colors.hints.match.fg = base05

c.colors.keyhint.fg = base05

c.colors.keyhint.suffix.fg = base05

c.colors.keyhint.bg = base00

c.colors.messages.error.fg = base00

c.colors.messages.error.bg = base08

c.colors.messages.error.border = base08

c.colors.messages.warning.fg = base00

c.colors.messages.warning.bg = base0E

c.colors.messages.warning.border = base0E

c.colors.messages.info.fg = base05

c.colors.messages.info.bg = base00

c.colors.messages.info.border = base00

c.colors.prompts.fg = base05

c.colors.prompts.border = base00

c.colors.prompts.bg = base00

c.colors.prompts.selected.bg = base0A

c.colors.statusbar.normal.fg = base0B

c.colors.statusbar.normal.bg = base00

c.colors.statusbar.insert.fg = base00

c.colors.statusbar.insert.bg = base0D

c.colors.statusbar.passthrough.fg = base00

c.colors.statusbar.passthrough.bg = base0C

c.colors.statusbar.private.fg = base00

c.colors.statusbar.private.bg = base03

c.colors.statusbar.command.fg = base05

c.colors.statusbar.command.bg = base00

c.colors.statusbar.command.private.fg = base05

c.colors.statusbar.command.private.bg = base00

c.colors.statusbar.caret.fg = base00

c.colors.statusbar.caret.bg = base0E

c.colors.statusbar.caret.selection.fg = base00

c.colors.statusbar.caret.selection.bg = base0D

c.colors.statusbar.progress.bg = base0D

c.colors.statusbar.url.fg = base05

c.colors.statusbar.url.error.fg = base08

c.colors.statusbar.url.hover.fg = base05

c.colors.statusbar.url.success.http.fg = base0C

c.colors.statusbar.url.success.https.fg = base0B

c.colors.statusbar.url.warn.fg = base0E

c.colors.tabs.bar.bg = base00

c.colors.tabs.indicator.start = base0D

c.colors.tabs.indicator.stop = base0C

c.colors.tabs.indicator.error = base08

c.colors.tabs.odd.fg = base05

c.colors.tabs.odd.bg = base03

c.colors.tabs.even.fg = base05

c.colors.tabs.even.bg = base00

c.colors.tabs.pinned.even.bg = base0C

c.colors.tabs.pinned.even.fg = base07

c.colors.tabs.pinned.odd.bg = base0B

c.colors.tabs.pinned.odd.fg = base07

c.colors.tabs.pinned.selected.even.bg = base05

c.colors.tabs.pinned.selected.even.fg = base00

c.colors.tabs.pinned.selected.odd.bg = base05

c.colors.tabs.pinned.selected.odd.fg = base0E

c.colors.tabs.selected.odd.fg = base00

c.colors.tabs.selected.odd.bg = base05

c.colors.tabs.selected.even.fg = base00

c.colors.tabs.selected.even.bg = base05
"""
