''
[class]
audio_default	= [
	{ command = "mpv", args = [ "--" ] },
	{ command = "mediainfo", confirm_exit = true },
]

image_default	= [
	{ command = "sxiv", args = [ "--" ], fork = true, silent = true },
	{ command = "gwenview", args = [ "--" ], fork = true, silent = true },
	{ command = "qimgv", args = [ "--" ], fork = true, silent = true },
	{ command = "krita", args = [ "--" ], fork = true, silent = true },
	{ command = "exiftool", confirm_exit = true },
	{ command = "swappy", args = [ "-f" ], fork = true },
]

video_default	= [
	{ command = "mpv", args = [ "--" ] , fork = true, silent = true },
	{ command = "smplayer", args = [ "--" ] , fork = true, silent = true },
	{ command = "mediainfo", confirm_exit = true },
	{ command = "mpv", args = [ "--mute", "on", "--" ], fork = true, silent = true },
]

text_default	= [
	{ command = "nvim" },
	{ command = "kate", fork = true, silent = true },
	{ command = "bat", args = [ "--paging=always" ] },
]

reader_default	= [
	{ command = "zathura", fork = true, silent = true },
]

libreoffice_default	= [
	{ command = "libreoffice", fork = true, silent = true },
]


[extension]

## image formats
avif.inherit    = "image_default"
bmp.inherit	= "image_default"
gif.inherit	= "image_default"
heic.inherit	= "image_default"
jpeg.inherit	= "image_default"
jpe.inherit	= "image_default"
jpg.inherit	= "image_default"
pgm.inherit	= "image_default"
png.inherit	= "image_default"
ppm.inherit	= "image_default"
webp.inherit	= "image_default"

svg.app_list	= [
	{ command = "inkview", fork = true, silent = true },
	{ command = "inkscape", fork = true, silent = true } ]
tiff.app_list	= [
	{ command = "qimgv", fork = true, silent = true },
	{ command = "krita", fork = true, silent = true } ]

## audio formats
flac.inherit	= "audio_default"
m4a.inherit	= "audio_default"
mp3.inherit	= "audio_default"
ogg.inherit	= "audio_default"
wav.inherit	= "audio_default"

## video formats
avi.inherit	= "video_default"
av1.inherit	= "video_default"
flv.inherit	= "video_default"
mkv.inherit	= "video_default"
m4v.inherit	= "video_default"
mov.inherit	= "video_default"
mp4.inherit	= "video_default"
mpg.inherit	= "video_default"
ts.inherit	= "video_default"
webm.inherit	= "video_default"
wmv.inherit	= "video_default"

## text formats
build.inherit	= "text_default"
c.inherit	= "text_default"
cmake.inherit	= "text_default"
conf.inherit	= "text_default"
cpp.inherit	= "text_default"
css.inherit	= "text_default"
csv.inherit	= "text_default"
cu.inherit	= "text_default"
ebuild.inherit	= "text_default"
eex.inherit	= "text_default"
env.inherit	= "text_default"
ex.inherit	= "text_default"
exs.inherit	= "text_default"
go.inherit	= "text_default"
h.inherit	= "text_default"
hpp.inherit	= "text_default"
hs.inherit	= "text_default"
html.inherit	= "text_default"
ini.inherit	= "text_default"
java.inherit	= "text_default"
js.inherit	= "text_default"
json.inherit	= "text_default"
kt.inherit	= "text_default"
lua.inherit	= "text_default"
log.inherit	= "text_default"
md.inherit	= "text_default"
micro.inherit	= "text_default"
ninja.inherit	= "text_default"
py.inherit	= "text_default"
rkt.inherit	= "text_default"
rs.inherit	= "text_default"
scss.inherit	= "text_default"
sh.inherit	= "text_default"
srt.inherit	= "text_default"
svelte.inherit	= "text_default"
toml.inherit	= "text_default"
tsx.inherit	= "text_default"
txt.inherit	= "text_default"
vim.inherit	= "text_default"
xml.inherit	= "text_default"
yaml.inherit	= "text_default"
yml.inherit	= "text_default"

# archive formats
7z.app_list	= [
	{ command = "7z", args = [ "x" ], confirm_exit = true },
	{ command = "file-roller", fork = true, silent = true } ]
bz2.app_list	= [
	{ command = "tar", args = [ "-xvjf" ], confirm_exit = true },
	{ command = "file-roller", fork = true, silent = true } ]
gz.app_list	= [
	{ command = "tar", args = [ "-xvzf" ], confirm_exit = true },
	{ command = "file-roller", fork = true, silent = true } ]
tar.app_list	= [
	{ command = "tar", args = [ "-xvf" ], confirm_exit = true },
	{ command = "file-roller", fork = true, silent = true } ]
tgz.app_list	= [
	{ command = "tar", args = [ "-xvzf" ], confirm_exit = true },
	{ command = "file-roller", fork = true, silent = true } ]
rar.app_list	= [
	{ command = "unrar", args = [ "x" ], confirm_exit = true },
	{ command = "file-roller", fork = true, silent = true } ]
xz.app_list	= [
	{ command = "tar", args = [ "-xvJf" ], confirm_exit = true },
	{ command = "file-roller", fork = true, silent = true } ]
zip.app_list	= [
	{ command = "unzip", confirm_exit = true },
	{ command = "file-roller", fork = true, silent = true } ]

# misc formats
aup.app_list	= [
	{ command = "audacity", fork = true, silent = true } ]
scad.app_list	= [
	{ command = "openscad", fork = true, silent = true } ]

m3u.app_list	= [
	{ command = "micro" },
	{ command = "mpv" },
	{ command = "gedit", fork = true, silent = true },
	{ command = "bat", confirm_exit = true } ]

odt.inherit	= "libreoffice_default"
odf.inherit	= "libreoffice_default"
ods.inherit	= "libreoffice_default"
odp.inherit	= "libreoffice_default"

doc.inherit	= "libreoffice_default"
docx.inherit	= "libreoffice_default"
xls.inherit	= "libreoffice_default"
xlsx.inherit	= "libreoffice_default"
ppt.inherit	= "libreoffice_default"
pptx.inherit	= "libreoffice_default"

pdf.inherit	= "reader_default"
epub.inherit	= "reader_default"

kra.app_list = [
	{ command = "krita", fork = true, silent = true }
]
kdenlive.app_list = [
	{ command = "kdenlive", fork = true, silent = true }
]

tex.app_list	= [
	{ command = "micro" },
	{ command = "gedit", fork = true, silent = true },
	{ command = "bat", confirm_exit = true },
	{ command = "pdflatex" } ]

torrent.app_list = [
	{ command = "transmission-gtk" } ]

stl.app_list = [
    { command = "f3d", fork = true, silent = true },
]

dxf.app_list = [
    { command = "f3d", fork = true, silent = true },
    { command = "inkscape", fork = true, silent = true },
]

[mimetype]

# application/octet-stream
[mimetype.application.subtype.octet-stream]
inherit = "video_default"

# text/*
[mimetype.text]
inherit = "text_default"

# text/*
[mimetype.video]
inherit = "video_default"
''
