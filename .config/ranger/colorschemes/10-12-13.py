# Thème pour Ranger.
# Le rouge et le noir.

from ranger.gui.colorscheme import ColorScheme
from ranger.gui.color import *

class Default(ColorScheme):
	def use(self, context):
		fg, bg, attr = default_colors

		if context.reset:
			return default_colors

		elif context.in_browser:
			if context.empty or context.error:
				bg = red
			if context.border:
				fg = default
			if context.media:
				if context.image:
					fg = cyan
					attr = normal
				else:
					fg = white
					attr = normal
			if context.container:
				fg = green
				attr = normal
			if context.directory:
				attr |= normal
				fg = black
			elif context.executable and not \
					any((context.media, context.container,
						context.fifo, context.socket)):
				attr |= bold
				fg = green
			if context.socket:
				fg = magenta
				attr |= bold
			if context.fifo or context.device:
				fg = yellow
				if context.device:
					attr |= bold
			if context.link:
				fg = context.good and cyan or magenta
			if context.tag_marker and not context.selected:
				attr |= bold
				if fg in (red, magenta):
					fg = cyan
				else:
					fg = red
			if not context.selected and (context.cut or context.copied):
				fg = yellow
				attr |= normal
			if context.badinfo:
				if attr & reverse:
					bg = magenta
				else:
					fg = magenta
			if context.main_column:
				if context.selected:
					fg = red
				#	bg = black
					attr = bold
				if context.marked:
					attr |= bold
					fg = yellow
			if not context.main_column:
			#	if context.selected:
			#		fg = black
			#		bg = black
			#		attr = reverse
				if context.marked:
					attr |= bold
					fg = yellow
			if context.selected and (context.cut or context.copied):
				fg = yellow
				attr |= normal

		elif context.in_titlebar:
			attr |= normal
			if context.hostname:
				fg = context.bad and red or black
			elif context.directory:
				fg = red
			elif context.tab:
				if context.good:
					bg = red
			elif context.link:
				fg = cyan

		elif context.in_statusbar:
			if context.permissions:
				if context.good:
					fg = cyan
				elif context.bad:
					fg = magenta
			if context.marked:
				attr |= bold | reverse
				fg = yellow
			if context.message:
				if context.bad:
					attr |= bold
					fg = red

		if context.text:
			if context.highlight:
				attr |= reverse

		if context.in_taskview:
			if context.title:
				fg = blue

			if context.selected:
				attr |= reverse

		return fg, bg, attr
