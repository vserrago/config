--------------------------
-- Custom awesome theme --
--------------------------

theme = {}

-- Set current theme directory
theme.confdir = awful.util.getdir("config") .. "/Da-V-Theme/"

-- Set default theme directory
theme.defdir = "/usr/share/awesome/themes/default/"

theme.font          = "sans 8"

theme.bg_normal     = "#222222"
theme.bg_focus      = "#008040"
theme.bg_urgent     = "#ff0000"
theme.bg_minimize   = "#444444"

theme.fg_normal     = "#aaaaaa"
theme.fg_focus      = "#ffffff"
theme.fg_urgent     = "#ffffff"
theme.fg_minimize   = "#ffffff"

theme.border_width  = "1"
theme.border_normal = "#004020"
theme.border_focus  = "#008040"
theme.border_marked = "#91231c"

-- There are other variable sets
-- overriding the default one when
-- defined, the sets are:
-- [taglist|tasklist]_[bg|fg]_[focus|urgent]
-- titlebar_[bg|fg]_[normal|focus]
-- tooltip_[font|opacity|fg_color|bg_color|border_width|border_color]
-- mouse_finder_[color|timeout|animate_timeout|radius|factor]
-- Example:
--theme.taglist_bg_focus = "#ff0000"

-- Wallpaper
theme.wallpaper_cmd = { "awsetbg " .. theme.confdir .. "background.png" }

-- Display the taglist squares
theme.taglist_squares_sel       = theme.defdir .. "taglist/squarefw.png"
theme.taglist_squares_unsel     = theme.defdir .. "taglist/squarew.png"

theme.tasklist_floating_icon    = theme.confdir .. "tasklist/floatingw.png"

-- Variables set for theming the menu:
-- menu_[bg|fg]_[normal|focus]
-- menu_[border_color|border_width]
theme.menu_submenu_icon = theme.confdir .. "submenu.png"
theme.menu_height       = "15"
theme.menu_width        = "150"

-- You can add as many variables as
-- you wish and access them by using
-- beautiful.variable in your rc.lua
-- theme.bg_widget = "#cc0000"

-- Layout icons                                                     --Layout #
theme.layout_floating   = theme.confdir .. "layouts/floatingw.png"      -- 1
theme.layout_tile       = theme.confdir .. "layouts/tilew.png"          -- 2
theme.layout_tileleft   = theme.confdir .. "layouts/tileleftw.png"      -- 3
theme.layout_tilebottom = theme.confdir .. "layouts/tilebottomw.png"    -- 4
theme.layout_tiletop    = theme.confdir .. "layouts/tiletopw.png"       -- 5 
theme.layout_fairv      = theme.confdir .. "layouts/fairvw.png"         -- 6
theme.layout_fairh      = theme.confdir .. "layouts/fairhw.png"         -- 7
theme.layout_spiral     = theme.defdir  .. "layouts/spiralw.png"        -- 8
theme.layout_dwindle    = theme.defdir  .. "layouts/dwindlew.png"       -- 9
theme.layout_max        = theme.defdir  .. "layouts/maxw.png"           -- 10
theme.layout_fullscreen = theme.confdir .. "layouts/fullscreenw.png"    -- 11
theme.layout_magnifier  = theme.defdir  .. "layouts/magnifierw.png"     -- 12

-- Awesome tray icon
theme.awesome_icon      = theme.confdir .. "icons/awesome16.png"

-- Define the image to load
theme.titlebar_close_button_focus               = theme.defdir .. "titlebar/close_focus.png"
theme.titlebar_close_button_normal              = theme.defdir .. "titlebar/close_normal.png"

theme.titlebar_ontop_button_focus_active        = theme.defdir .. "titlebar/ontop_focus_active.png"
theme.titlebar_ontop_button_normal_active       = theme.defdir .. "titlebar/ontop_normal_active.png"
theme.titlebar_ontop_button_focus_inactive      = theme.defdir .. "titlebar/ontop_focus_inactive.png"
theme.titlebar_ontop_button_normal_inactive     = theme.defdir .. "titlebar/ontop_normal_inactive.png"

theme.titlebar_sticky_button_focus_active       = theme.defdir .. "titlebar/sticky_focus_active.png"
theme.titlebar_sticky_button_normal_active      = theme.defdir .. "titlebar/sticky_normal_active.png"
theme.titlebar_sticky_button_focus_inactive     = theme.defdir .. "titlebar/sticky_focus_inactive.png"
theme.titlebar_sticky_button_normal_inactive    = theme.defdir .. "titlebar/sticky_normal_inactive.png"

theme.titlebar_floating_button_focus_active     = theme.defdir .. "titlebar/floating_focus_active.png"
theme.titlebar_floating_button_normal_active    = theme.defdir .. "titlebar/floating_normal_active.png"
theme.titlebar_floating_button_focus_inactive   = theme.defdir .. "titlebar/floating_focus_inactive.png"
theme.titlebar_floating_button_normal_inactive  = theme.defdir .. "titlebar/floating_normal_inactive.png"

theme.titlebar_maximized_button_focus_active    = theme.defdir .. "titlebar/maximized_focus_active.png"
theme.titlebar_maximized_button_normal_active   = theme.defdir .. "titlebar/maximized_normal_active.png"
theme.titlebar_maximized_button_focus_inactive  = theme.defdir .. "titlebar/maximized_focus_inactive.png"
theme.titlebar_maximized_button_normal_inactive = theme.defdir .. "titlebar/maximized_normal_inactive.png"

return theme
