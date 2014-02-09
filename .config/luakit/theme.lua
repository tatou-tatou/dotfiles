--------------------------
-- Default luakit theme --
--------------------------

local theme = {}

-- Default settings
theme.font = "MonteCarlo normal 11"
theme.fg   = "#eddec9"
theme.bg   = "#161616"

-- General colours
theme.success_fg = "#0f0"
theme.loaded_fg  = "#33AADD"
theme.error_fg = "#FFF"
theme.error_bg = "#F00"

-- Warning colours
theme.warning_fg = "#F00"
theme.warning_bg = "#FFF"

-- Notification colours
theme.notif_fg = "#444"
theme.notif_bg = "#FFF"

-- Menu colours
theme.menu_fg                   = "#eddec9"
theme.menu_bg                   = "#161616"
theme.menu_selected_fg          = "#000"
theme.menu_selected_bg          = "#5C5748"
theme.menu_title_bg             = "#878438"
theme.menu_primary_title_fg     = "#161616"
theme.menu_secondary_title_fg   = "#eddec9"

-- Proxy manager
theme.proxy_active_menu_fg      = '#000'
theme.proxy_active_menu_bg      = '#FFF'
theme.proxy_inactive_menu_fg    = '#888'
theme.proxy_inactive_menu_bg    = '#FFF'

-- Statusbar specific
theme.sbar_fg         = "#eddec9"
theme.sbar_bg         = "#161616"

-- Downloadbar specific
theme.dbar_fg         = "#eddec9"
theme.dbar_bg         = "#161616"
theme.dbar_error_fg   = "#F00"

-- Input bar specific
theme.ibar_fg           = "#eddec9"
theme.ibar_bg           = "#161616"

-- Tab label
theme.tab_fg            = "#5C5748"
theme.tab_ntheme        = "#292929"
theme.tab_bg            = "#161616"
theme.selected_fg       = "#eddec9"
theme.selected_bg       = "#802828"
theme.selected_ntheme   = "#eddec9"
theme.loading_fg        = "#A7341B"
theme.loading_bg        = "#000"

-- Trusted/untrusted ssl colours
theme.trust_fg          = "#DDB62B"
theme.notrust_fg        = "#740000"

-- Added manually --
theme.uri_sbar_fg       = "#878438"
theme.sbar_loaded_fg    = "#606060"
theme.downloads_sbar_fg = "#878438"

return theme
-- vim: et:sw=4:ts=8:sts=4:tw=80
