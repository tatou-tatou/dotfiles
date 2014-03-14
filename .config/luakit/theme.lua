--------------------------
-- Default luakit theme --
--------------------------

local theme = {}

-- Default settings
--theme.font = "MonteCarlo 11px"
theme.font = "Lucida Grande normal 8"
theme.fg   = "#E3D9BB"
theme.bg   = "#201F1D"

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
theme.menu_fg                   = "#E3D9BB"
theme.menu_bg                   = "#201F1D"
theme.menu_selected_fg          = "#eddec9"
theme.menu_selected_bg          = "#a7402a"
theme.menu_title_bg             = "#878438"
theme.menu_primary_title_fg     = "#000"
theme.menu_secondary_title_fg   = "#a7402a"

-- Proxy manager
theme.proxy_active_menu_fg      = '#000'
theme.proxy_active_menu_bg      = '#FFF'
theme.proxy_inactive_menu_fg    = '#888'
theme.proxy_inactive_menu_bg    = '#FFF'

-- Statusbar specific
theme.sbar_fg         = "#E3D9BB"
theme.sbar_bg         = "#201F1D"

-- Downloadbar specific
theme.dbar_fg         = "#E3D9BB"
theme.dbar_bg         = "#201F1D"
theme.dbar_error_fg   = "#F00"

-- Input bar specific
theme.ibar_fg           = "#E3D9BB"
theme.ibar_bg           = "#201F1D"

-- Tab label
theme.tab_fg            = "#DED0B4"
theme.tab_ntheme        = "#201F1D"
theme.tab_bg            = "#201F1D"
theme.selected_fg       = "#EDDEC9"
theme.selected_bg       = "#3D444E"
theme.selected_ntheme   = "#3D444E"
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
