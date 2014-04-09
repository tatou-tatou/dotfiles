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
				fg = black
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
				attr = normal
				fg = 3
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
				fg = red
				attr |= normal
			if context.badinfo:
				if attr & reverse:
					bg = magenta
				else:
					fg = magenta
			if context.selected and (context.cut or context.copied):
				fg = red
				attr |= normal
			if context.main_column:
				if context.selected:
					fg = default
					bg = cyan
					attr = bold
				if context.marked:
					attr |= bold
					fg = yellow
			if not context.main_column:
				#if context.selected:
				#	fg = white
				#	bg = default
				#	attr = reverse
				if context.marked:
					attr |= bold
					fg = yellow

		elif context.in_titlebar:
			attr |= normal
			bg = 16
			if context.hostname:
				#fg = context.bad and red or white
				#bg = context.bad and red or cyan
				#attr = normal
				#attr |= bold | reverse
				#fg = yellow
				fg = default
				bg = 18
			elif context.directory:
				fg = default
				attr = normal
			elif context.tab:
				if context.good:
					fg = white
					bg = cyan
				if context.bad:
					fg = 16
					bg = cyan
			elif context.link:
				fg = cyan

		elif context.in_statusbar:
			attr |= normal
			bg = 16
			if context.permissions:
				if context.good:
					#fg = 16
					#bg = yellow
					#attr = normal
					#fg = 18
					#attr |= bold | reverse
					fg = default
					bg = 18
				elif context.bad:
					fg = default
					bg = red
			if context.marked:
				#attr |= bold | reverse
				#fg = yellow
				fg = default
				bg = 18
			if context.all:
				#attr |= bold | reverse
				#fg = 18
				fg = default
				bg = 18
			if context.top:
				#attr |= bold | reverse
				#fg = 18
				fg = default
				bg = 18
			if context.bot:
				#attr |= bold | reverse
				fg = default
				bg = 18
			if context.percentage:
				#attr |= bold | reverse
				fg = default
				bg = 18
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
