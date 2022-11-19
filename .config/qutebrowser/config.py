##### Autogenerated config.py #####
#
# NOTE: config.py is intended for advanced users who are comfortable
# with manually migrating the config file on qutebrowser upgrades. If
# you prefer, you can also configure qutebrowser using the
# :set/:bind/:config-* commands without having to write a config.py
# file.
#
# Documentation:
#   qute://help/configuring.html
#   qute://help/settings.html

# Change the argument to True to still load settings configured via autoconfig.yml
config.load_autoconfig(False)

# Value to send in the `Accept-Language` header. Note that the value
# read from JavaScript is always the global value.
# Type: String
config.set('content.headers.accept_language', '', 'https://matchmaker.krunker.io/*')

# Load images automatically in web pages.
# Type: Bool
config.set('content.images', True, 'chrome-devtools://*')

# Load images automatically in web pages.
# Type: Bool
config.set('content.images', True, 'devtools://*')


##### User Agent #####
# User agent to send.  The following placeholders are defined:  *
# `{os_info}`: Something like "X11; Linux x86_64". * `{webkit_version}`:
# The underlying WebKit version (set to a fixed value   with
# QtWebEngine). * `{qt_key}`: "Qt" for QtWebKit, "QtWebEngine" for
# QtWebEngine. * `{qt_version}`: The underlying Qt version. *
# `{upstream_browser_key}`: "Version" for QtWebKit, "Chrome" for
# QtWebEngine. * `{upstream_browser_version}`: The corresponding
# Safari/Chrome version. * `{qutebrowser_version}`: The currently
# running qutebrowser version.  The default value is equal to the
# unchanged user agent of QtWebKit/QtWebEngine.  Note that the value
# read from JavaScript is always the global value. With QtWebEngine
# between 5.12 and 5.14 (inclusive), changing the value exposed to
# JavaScript requires a restart.
# Type: FormatString

## Default user_agent
# config.set('content.headers.user_agent', 'Mozilla/5.0 ({os_info}) AppleWebKit/{webkit_version} (KHTML, like Gecko) {upstream_browser_key}/{upstream_browser_version} Safari/{webkit_version}', 'https://web.whatsapp.com/')

## Costom user_agent 
config.set('content.headers.user_agent', 'Mozilla/5.0 (Windows NT 10.0; rv:68.0) Gecko/20100101 Firefox/68.0', '*')

##### JavaScript #####
# Disable/Enables JavaScript 
config.set('content.javascript.enabled', False) 
config.set('content.javascript.enabled', True, 'https://searx.tiekoetter.com/*')
config.set('content.javascript.enabled', True, 'file:///home/arega/.config/start_pages/Terminal/index.html')
config.set('content.javascript.enabled', True, 'https://gamma.sympy.org/*')
config.set('content.javascript.enabled', True, 'https://www.openstreetmap.org/*')
config.set('content.javascript.enabled', True, 'https://lichess.org/*')
config.set('content.javascript.enabled', True, 'https://account.proton.me/*')
config.set('content.javascript.enabled', True, 'https://snapdrop.net/*')
config.set('content.javascript.enabled', True, 'https://www.twitch.tv/*')
config.set('content.javascript.enabled', True, 'https://www.reuters.com/*')
config.set('content.javascript.enabled', True, 'https://apnews.com/*')
config.set('content.javascript.enabled', True, 'https://github.com/*')

###### Disable WebGL #####
config.set('content.webgl',False)

##### AdBlocker #####
# Brave AdBlocker (install python-adblock)
config.set('content.blocking.method', 'both')

##### HTTP Connection accept #####
config.set('content.headers.accept_language', 'en-US,en;q=0.5')
config.set('content.headers.custom', {'accept': 'text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8'})

##### Canvas Reading #####
config.set('content.canvas_reading', False)

##### Key Bindings #####
config.bind('V', 'hint links spawn mpv {hint-url}')
config.bind('J', 'config-cycle content.javascript.enabled True False')
config.bind('H', 'history-clear')
config.bind('ab','bookmark-add')
config.bind('zt','config-cycle statusbar.show always never')

##### Cookies #####
# Dont store cookies (can't define sepecific urls) 
config.set('content.cookies.store', False)
config.set('content.cookies.accept', 'no-unknown-3rdparty')
# Which cookies to accept
# Valid values:
#   - all: Accept all cookies.
#   - no-3rdparty: Accept cookies from the same origin only. This is known to break some sites, such as GMail.
#   - no-unknown-3rdparty: Accept cookies from the same origin only, unless a cookie is already set for the domain. On QtWebEngine, this is the same as no-3rdparty.
#   - never: Don't accept cookies at all.

##### Private mode #####
# Doesnt store browsing history
# config.set('content.private_browsing', True)

##### Homepage ######
config.set('url.start_pages','file:///home/arega/.config/start_pages/Terminal/index.html')

##### New page ######
config.set('url.default_page','file:///home/arega/.config/start_pages/Terminal/index.html')

##### Search Engines ######
c.url.searchengines = {'DEFAULT': 'https://searx.tiekoetter.com/search?q={}', 'sx': 'https://searx.tiekoetter.com/search?q={}', 'aw': 'https://wiki.archlinux.org/?search={}', 're': 'https://libreddit.tiekoetter.com/r/popular/search?q={}', 'ub': 'https://www.urbandictionary.com/define.php?term={}','ddg': 'https://duckduckgo.com/html?q={}' , 'wiki': 'https://wikiless.tiekoetter.com/w/index.php?search={}', 'yt': 'https://invidious.tiekoetter.com/search?q={}'}


##### Theme #####

## Import Pywal Colors
# https://qutebrowser.org/doc/help/configuring.html
import subprocess

def read_xresources(prefix):
    props = {}
    x = subprocess.run(['xrdb', '-query'], capture_output=True, check=True, text=True)
    lines = x.stdout.split('\n')
    for line in filter(lambda l : l.startswith(prefix), lines):
        prop, _, value = line.partition(':\t')
        props[prop] = value
    return props

xresources = read_xresources('*')
##

## Fonts
config.set('fonts.default_family', 'JetBrains')
config.set('fonts.default_size', '10pt')
c.fonts.web.size.default = 14

## Colors
# Set Dark mode
config.set("colors.webpage.darkmode.enabled", True)

# Statusbar
c.colors.statusbar.normal.bg = xresources["*.background"]
c.colors.statusbar.command.bg = xresources["*.background"]
c.colors.statusbar.command.fg = xresources["*.foreground"]
c.colors.statusbar.normal.fg = xresources["*.foreground"]
c.colors.statusbar.url.success.https.fg = xresources["*.color1"]

# Tabs
c.colors.tabs.even.bg = xresources["*.background"]
c.colors.tabs.odd.bg = xresources["*.background"]
c.colors.tabs.even.fg = xresources["*.foreground"]
c.colors.tabs.odd.fg = xresources["*.foreground"]
c.colors.tabs.selected.even.bg = xresources["*.color1"]
c.colors.tabs.selected.odd.bg = xresources["*.color1"]
c.colors.hints.bg = xresources["*.background"]
c.colors.hints.fg = xresources["*.foreground"]
c.tabs.show = "multiple"
c.statusbar.show = "always"

# change title format
c.tabs.title.format = "{audio}{current_title}"

c.colors.tabs.indicator.stop = xresources["*.color14"]
c.colors.completion.odd.bg = xresources["*.background"]
c.colors.completion.even.bg = xresources["*.background"]
c.colors.completion.fg = xresources["*.foreground"]
c.colors.completion.category.bg = xresources["*.background"]
c.colors.completion.category.fg = xresources["*.foreground"]
c.colors.completion.item.selected.bg = xresources["*.color1"]
c.colors.completion.item.selected.fg = xresources["*.foreground"]
c.colors.webpage.bg = xresources["*.background"]
