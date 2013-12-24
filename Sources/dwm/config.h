/* See LICENSE file for copyright and license details. */

/* appearance */
//static const char font[]            = "Profont 12";
//static const char normbordercolor[] = "#403f3e"; /* Original */
//static const char normbgcolor[]     = "#110908"; /* Original */
//static const char normfgcolor[]     = "#ECECEE"; /* Original */
//static const char selbordercolor[]  = "#740000"; /* Original */
//static const char selbgcolor[]      = "#740000"; /* Original */
//static const char selfgcolor[]      = "#ECECEE"; /* Original */
static const char font[]            = "MonteCarlo 11";
static const char normbordercolor[] = "#2D130F";
static const char normbgcolor[]     = "#110908";
static const char normfgcolor[]     = "#E1D2CF";
static const char selbordercolor[]  = "#4C332F";
static const char selbgcolor[]      = "#740000";
static const char selfgcolor[]      = "#E1D2CF";
static const unsigned int borderpx  = 1;        /* border pixel of windows */
static const unsigned int snap      = 5;       /* snap pixel */
static const Bool showbar           = True;     /* False means no bar */
static const Bool topbar            = True;     /* False means bottom bar */

//static const unsigned int minwsz    = 5; /*Minimal height of a client for smfact */

static const unsigned int gappx     = 5;

/* tagging */
static const char *tags[] = { "web", "term", "video", "misc" };

static const Rule rules[] = {
	/* class      instance    title       tags mask     isfloating   monitor */
	{ "Gimp",     NULL,       NULL,       1 << 3,       False,       -1 },
	{ "wine",     NULL,       NULL,       0,            True,        -1 },
	{ "mplayer",  NULL,       NULL,       1 << 2,       False,       -1 },
	{ "luakit",   NULL,       NULL,       1 << 0,       False,       -1 },
};

/* layout(s) */
static const float mfact      = 0.60; /* factor of master area size [0.05..0.95] */
//static const float smfact      = 0.00; /* factor of tiled clients [0.05..0.95] */
static const int nmaster      = 1;    /* number of clients in master area */
static const Bool resizehints = False; /* True means respect size hints in tiled resizals */

static const Layout layouts[] = {
	/* symbol     arrange function */
	{ "",      tile },    /* first entry is default */
	{ "",      NULL },    /* no layout function means floating behavior */
	{ "",      monocle },
};

/* key definitions */
#define MODKEY Mod4Mask
#define TAGKEYS(KEY,TAG) \
	{ MODKEY,                       KEY,      view,           {.ui = 1 << TAG} }, \
	{ MODKEY|ControlMask,           KEY,      toggleview,     {.ui = 1 << TAG} }, \
	{ MODKEY|ShiftMask,             KEY,      tag,            {.ui = 1 << TAG} }, \
	{ MODKEY|ControlMask|ShiftMask, KEY,      toggletag,      {.ui = 1 << TAG} },

/* helper for spawning shell commands in the pre dwm-5.0 fashion */
#define SHCMD(cmd) { .v = (const char*[]){ "/bin/sh", "-c", cmd, NULL } }

/* commands */
//static const char *dmenucmd[] = { "dmenu_run", "-b", "-fn", "MonteCarlo-8", "-nb", "#0d0706", "-nf", "#ECECEE", "-sb", selbgcolor, "-sf", selfgcolor, NULL };
static const char *dmenucmd[] = { "dmenu_run", "-i", "-x", "415", "-y", "330", "-w", "450", "-h", "20", "-l", "4", "-fn", "MonteCarlo-8", "-nb", "#0d0706", "-nf", "#ECECEE", "-sb", selbgcolor, "-sf", selfgcolor, NULL }; /* au centre de l'écran */
static const char *gtkmenu[] = { "mygtkmenu", "/home/tatou/.config/GTKmenu/DWM_gauche", NULL };
static const char *gtkmenudroite[] = { "mygtkmenu", "/home/tatou/.config/GTKmenu/DWM_droite", NULL };
static const char *termcmd[]  = { "urxvt", NULL };
static const char *rangercmd[]  = { "urxvt", "-e", "ranger", NULL };

static Key keys[] = {
	/* modifier                     key        function        argument */
	{ MODKEY,                       XK_p,      spawn,          {.v = dmenucmd } },
	{ MODKEY,                       XK_Return, spawn,          {.v = termcmd } },
	{ MODKEY,                       XK_dead_grave, spawn,      {.v = gtkmenu } },
	{ MODKEY,                       XK_backslash, spawn,       {.v = gtkmenu } },
	{ MODKEY,                       XK_ugrave, spawn,          {.v = rangercmd } },
	{ MODKEY,                       XK_b,      togglebar,      {0} },
	{ MODKEY,                       XK_j,      focusstack,     {.i = +1 } },
	{ MODKEY,                       XK_k,      focusstack,     {.i = -1 } },
	{ MODKEY,                       XK_i,      incnmaster,     {.i = +1 } },
	{ MODKEY,                       XK_o,      incnmaster,     {.i = -1 } },
	{ MODKEY,                       XK_h,      setmfact,       {.f = -0.05} },
	{ MODKEY,                       XK_l,      setmfact,       {.f = +0.05} },
//	{ MODKEY|ShiftMask,             XK_h,      setsmfact,      {.f = -0.05} },
//	{ MODKEY|ShiftMask,             XK_l,      setsmfact,      {.f = +0.05} },
	{ MODKEY,                       XK_n,      zoom,           {0} },
	{ MODKEY,                       XK_Tab,    view,           {0} },
	{ MODKEY,                       XK_w,      killclient,     {0} },
	{ MODKEY,                       XK_t,      setlayout,      {.v = &layouts[0]} },
	{ MODKEY,                       XK_f,      setlayout,      {.v = &layouts[1]} },
	{ MODKEY,                       XK_m,      setlayout,      {.v = &layouts[2]} },
	{ MODKEY,                       XK_space,  setlayout,      {0} },
	{ MODKEY|ShiftMask,             XK_space,  togglefloating, {0} },
	{ MODKEY,                       XK_agrave, view,           {.ui = ~0 } },
	{ MODKEY|ShiftMask,             XK_agrave, tag,            {.ui = ~0 } },
	{ MODKEY,                       XK_comma,  focusmon,       {.i = -1 } },
	{ MODKEY,                       XK_semicolon, focusmon,    {.i = +1 } },
	{ MODKEY|ShiftMask,             XK_comma,  tagmon,         {.i = -1 } },
	{ MODKEY|ShiftMask,             XK_semicolon, tagmon,      {.i = +1 } },
	TAGKEYS(                        XK_1,                      0)
	TAGKEYS(                        XK_2,                      1)
	TAGKEYS(                        XK_3,                      2)
	TAGKEYS(                        XK_4,                      3)
	TAGKEYS(                        XK_5,                      4)
	TAGKEYS(                        XK_6,                      5)
	TAGKEYS(                        XK_7,                      6)
	TAGKEYS(                        XK_8,                      7)
	TAGKEYS(                        XK_9,                      8)
	TAGKEYS(                        XK_ampersand,              0)
	TAGKEYS(                        XK_eacute,                 1)
	TAGKEYS(                        XK_quotedbl,               2)
	TAGKEYS(                        XK_apostrophe,  	   3)
	TAGKEYS(                        XK_parenleft,              4)
	TAGKEYS(                        XK_section,                5)
	TAGKEYS(                        XK_egrave,                 6)
	TAGKEYS(                        XK_exclam,                 7)
	TAGKEYS(                        XK_ccedilla,               8)
	{ MODKEY|ShiftMask,             XK_q,      quit,           {0} },
};

/* button definitions */
/* click can be ClkLtSymbol, ClkStatusText, ClkWinTitle, ClkClientWin, or ClkRootWin */
static Button buttons[] = {
	/* click                event mask      button          function        argument */
	{ ClkLtSymbol,          0,              Button1,        setlayout,      {0} },
	{ ClkLtSymbol,          0,              Button3,        setlayout,      {.v = &layouts[2]} },
	{ ClkWinTitle,          0,              Button3,        zoom,           {0} },
	{ ClkWinTitle,          0,              Button2,        killclient,           {0} },
	{ ClkStatusText,        0,              Button2,        spawn,          {.v = termcmd } },
	{ ClkClientWin,         MODKEY,         Button1,        movemouse,      {0} },
	{ ClkClientWin,         MODKEY,         Button2,        togglefloating, {0} },
	{ ClkClientWin,     MODKEY|ControlMask, Button1,        resizemouse,    {0} },
	{ ClkTagBar,            0,              Button3,        spawn,          {.v = gtkmenu } },
	{ ClkStatusText,        0,              Button3,        spawn,          {.v = gtkmenudroite } },
	{ ClkTagBar,            0,              Button1,        view,           {0} },
	{ ClkTagBar,            0,              Button2,        toggleview,     {0} },
	{ ClkTagBar,            MODKEY,         Button1,        tag,            {0} },
	{ ClkTagBar,            MODKEY,         Button3,        toggletag,      {0} },
};

