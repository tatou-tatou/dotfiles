/* The height of the bar (in pixels) */
#define BAR_HEIGHT  18
/* The width of the bar. Set to -1 to fit screen */
#define BAR_WIDTH   -1
/* Offset from the left. Set to 0 to have no effect */
#define BAR_OFFSET 0
/* Choose between an underline or an overline */
#define BAR_UNDERLINE 1
/* The thickness of the underline (in pixels). Set to 0 to disable. */
#define BAR_UNDERLINE_HEIGHT 2
/* Default bar position, overwritten by '-b' switch */
#define BAR_BOTTOM 0
/* The fonts used for the bar, comma separated. Only the first 2 will be used. */
#define BAR_FONT       "-windows-montecarlo-medium-r-normal--11-110-72-72-c-60-microsoft-cp1252", "-windows-montecarlo-medium-r-normal--11-110-72-72-c-60-microsoft-cp1252"

/* Some fonts don't set the right width for some chars, pheex it */
#define BAR_FONT_FALLBACK_WIDTH 6
/* Define the opacity of the bar (requires a compositor such as compton) */
#define BAR_OPACITY 1.0 /* 0 is invisible, 1 is opaque */
/* Color palette */
#define BACKGROUND 0x1A1917
//#define BACKGROUND 0x161616
#define COLOR0 0x201f1d //Foncé              // UTILISÉE : bg messages
#define COLOR1 0xA7402a //Rouge              // UTILISÉE : bg tags, bg mails
#define COLOR2 0x878438 //Vert               // UTILISÉE : fg jour (horloge)
#define COLOR3 0x5C5541 //Gris clair         // UTILISÉE : petits carrés
#define COLOR4 0x3D444E //Bleu               // UTILISÉE : bg icônes messages
#define COLOR5 0xdec9a0                      // UTILISÉE : fg messages, fg horloge
#define COLOR6 0x302E26
#define COLOR7 0x302E26
#define COLOR8 0x5C5748
#define COLOR9 0xeddec9 //Blanc              // UTILISÉE : fg tags, fg mails
#define FOREGROUND 0xC9BCAB                  // UTILISÉE : fg icônes messages
//#define FOREGROUND 0xd4c6B4                  // UTILISÉE
