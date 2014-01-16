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
#define BAR_FONT       "-windows-montecarlo-medium-r-normal--11-110-72-72-c-60-microsoft-cp1252", "nu"
/* Some fonts don't set the right width for some chars, pheex it */
#define BAR_FONT_FALLBACK_WIDTH 6
/* Define the opacity of the bar (requires a compositor such as compton) */
#define BAR_OPACITY 1.0 /* 0 is invisible, 1 is opaque */
/* Color palette */
//#define BACKGROUND 0x0B0908
#define BACKGROUND 0x161616
#define COLOR0 0x110908 //Chocolat
#define COLOR1 0xA7341B //Rouge
#define COLOR2 0x878438 //Vert
//#define COLOR3 0x332A25 //Marron clair
#define COLOR3 0x574D48 //Marron clair
#define COLOR4 0x2F7496 //Bleu clair
//#define COLOR5 0x773137 //Magenta (fond)
#define COLOR5 0x773137 //Magenta (fond)
#define COLOR6 0x60687F //Gris-cyan
#define COLOR7 0x332D23 //Grisé
//#define COLOR8 0x606060 //Gris
#define COLOR8 0x5C5748 //Gris
#define COLOR9 0xeddec9 //Blanc
//#define FOREGROUND 0xD0C297
#define FOREGROUND 0xeddec9
