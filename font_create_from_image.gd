#-------------------------------------------------
#author: MagistrTot http://vk.com/magistrtot
#-------------------------------------------------
#script for creating font from user image
#commenting occurs in two languages,
#if you see an empty comment, it means that he is Russian 
#and you need to load the font with its support
#symbol table http://unicode-table.com/
#скрипт для создания шрифта из пользовательского изображения
#коды символов смотреть тут http://unicode-table.com/

extends Node
#create new font
#создаем новый шрифт
var new_font = Font.new() 

func _ready():
	#loading texture font
	#загрузка текстуры шрифта
	var font_texture = preload("res://alphabet.tex") 
	#add texture to font
	#добавляем текстуру к шрифту
	new_font.add_texture(font_texture) 
	#set name to font
	#даем название шрифту
	new_font.set_name("my_font") 
	#changing the way the internal texture
	#меняем путь текстуры на внутренний
	new_font.get_texture(0).set_path("res://font.fnt::0") 
	#for the convenience of creating aling
	#create alignment for convenience
	#have the symbols to be below the baseline
	#then align themselves prescribe
	#for example Latin symbol of "g" with respect to x the displacement of 0, the y should be 5 pixels below the baseline
	#new_font.add_char(0x0067, 0, Rect2(125, 64, 12, 16), Vector2(0,5), -1)
	#создаем выравнивание для удобства
	#есть символы, которые должны быть ниже базовой линии, 
	#тогда выравнивание прописываем сами
	#для примера латинский символ "g" по x смещение 0, по y должен быть на 5 пикселей ниже базовой линии
	#new_font.add_char(0x0067, 0, Rect2(125, 64, 12, 16), Vector2(0,5), -1)
	var align = Vector2(0,0)
	#set height and ascent font, pick up experimentally
	#установка высоты шрифта и ширины символа, подберете экспериментально
	new_font.set_height(21.0)
	new_font.set_ascent(16.0)
	
	#http://unicode-table.com/
	#simple for number 0, from site number of Unicode = U+0030
	#then we write code on HEX = 0x0030
	#add_char(HEX_code, ID_texture, region_of_texture_for_symbol, align, advance = -1)
	#для цифры 0, на сайте номер в Юникоде = U+0030
	#тогда для нас код будет HEX = 0x0030
	#add_char(HEX_код, ид_текстуры, регион_текстуры_для_символа, выравнивание, это_я_хз_что = -1)
	
	#ATTENTION:
	#Rect2(0, 0, 16, 16) - a rectangle that shows the location of the character texture,
	#at zero coordinates and the width to the height equal to 16,
	#replaced by their values
	#ВНИМАНИЕ:
	#Rect2(0, 0, 16, 16) - прямоугольник, которые показывает нахождение текстуры для символа,
	#по нулевым координатам и ширина с высотой равна 16,
	#заменить на свои значения, да нудно, но без этого никак
	new_font.add_char(0x0020, 0, Rect2(0, 0, 16, 16), align, -1) #space
	new_font.add_char(0x0021, 0, Rect2(0, 0, 16, 16), align, -1) #!
	new_font.add_char(0x0022, 0, Rect2(0, 0, 16, 16), align, -1) #"
	new_font.add_char(0x0027, 0, Rect2(0, 0, 16, 16), align, -1) #'
	new_font.add_char(0x003F, 0, Rect2(0, 0, 16, 16), align, -1) #?
	new_font.add_char(0x002E, 0, Rect2(0, 0, 16, 16), align, -1) #.
	new_font.add_char(0x002C, 0, Rect2(0, 0, 16, 16), align, -1) #,
	new_font.add_char(0x003A, 0, Rect2(0, 0, 16, 16), align, -1) #:
	new_font.add_char(0x003B, 0, Rect2(0, 0, 16, 16), align, -1) #;
	new_font.add_char(0x002D, 0, Rect2(0, 0, 16, 16), align, -1) #-
	new_font.add_char(0x002B, 0, Rect2(0, 0, 16, 16), align, -1) #+
	new_font.add_char(0x003D, 0, Rect2(0, 0, 16, 16), align, -1) #=
	new_font.add_char(0x002A, 0, Rect2(0, 0, 16, 16), align, -1) #*
	new_font.add_char(0x002F, 0, Rect2(0, 0, 16, 16), align, -1) #/
	new_font.add_char(0x005C, 0, Rect2(0, 0, 16, 16), align, -1) #\
	#new_font.add_char(0x005F, 0, Rect2(8, 0, 8, 16), align, -1) #_
	new_font.add_char(0x003C, 0, Rect2(0, 0, 16, 16), align, -1) #<
	new_font.add_char(0x003E, 0, Rect2(0, 0, 16, 16), align, -1) #>
	new_font.add_char(0x0028, 0, Rect2(0, 0, 16, 16), align, -1) #(
	new_font.add_char(0x0029, 0, Rect2(0, 0, 16, 16), align, -1) #)
	new_font.add_char(0x0025, 0, Rect2(0, 0, 16, 16), align, -1) #%
	new_font.add_char(0x007C, 0, Rect2(0, 0, 16, 16), align, -1) #|
	#
	new_font.add_char(0x0030, 0, Rect2(0, 0, 16, 16), align, -1) #0
	new_font.add_char(0x0031, 0, Rect2(0, 0, 16, 16), align, -1) #1
	new_font.add_char(0x0032, 0, Rect2(0, 0, 16, 16), align, -1) #2
	new_font.add_char(0x0033, 0, Rect2(0, 0, 16, 16), align, -1) #3
	new_font.add_char(0x0034, 0, Rect2(0, 0, 16, 16), align, -1) #4
	new_font.add_char(0x0035, 0, Rect2(0, 0, 16, 16), align, -1) #5
	new_font.add_char(0x0036, 0, Rect2(0, 0, 16, 16), align, -1) #6
	new_font.add_char(0x0037, 0, Rect2(0, 0, 16, 16), align, -1) #7
	new_font.add_char(0x0038, 0, Rect2(0, 0, 16, 16), align, -1) #8
	new_font.add_char(0x0039, 0, Rect2(0, 0, 16, 16), align, -1) #9
	#latin symbols
	#латинские символы
	new_font.add_char(0x0041, 0, Rect2(0, 0, 16, 16), align, -1) #A
	new_font.add_char(0x0042, 0, Rect2(0, 0, 16, 16), align, -1) #B
	new_font.add_char(0x0043, 0, Rect2(0, 0, 16, 16), align, -1) #C
	new_font.add_char(0x0044, 0, Rect2(0, 0, 16, 16), align, -1) #D
	new_font.add_char(0x0045, 0, Rect2(0, 0, 16, 16), align, -1) #E
	new_font.add_char(0x0046, 0, Rect2(0, 0, 16, 16), align, -1) #F
	new_font.add_char(0x0047, 0, Rect2(0, 0, 16, 16), align, -1) #G
	new_font.add_char(0x0048, 0, Rect2(0, 0, 16, 16), align, -1) #H
	new_font.add_char(0x0049, 0, Rect2(0, 0, 16, 16), align, -1) #I
	new_font.add_char(0x004A, 0, Rect2(0, 0, 16, 16), align, -1) #J
	new_font.add_char(0x004B, 0, Rect2(0, 0, 16, 16), align, -1) #K
	new_font.add_char(0x004C, 0, Rect2(0, 0, 16, 16), align, -1) #L
	new_font.add_char(0x004D, 0, Rect2(0, 0, 16, 16), align, -1) #M
	new_font.add_char(0x004E, 0, Rect2(0, 0, 16, 16), align, -1) #N
	new_font.add_char(0x004F, 0, Rect2(0, 0, 16, 16), align, -1) #O
	new_font.add_char(0x0050, 0, Rect2(0, 0, 16, 16), align, -1) #P
	new_font.add_char(0x0051, 0, Rect2(0, 0, 16, 16), align, -1) #Q
	new_font.add_char(0x0052, 0, Rect2(0, 0, 16, 16), align, -1) #R
	new_font.add_char(0x0053, 0, Rect2(0, 0, 16, 16), align, -1) #S
	new_font.add_char(0x0054, 0, Rect2(0, 0, 16, 16), align, -1) #T
	new_font.add_char(0x0055, 0, Rect2(0, 0, 16, 16), align, -1) #U
	new_font.add_char(0x0056, 0, Rect2(0, 0, 16, 16), align, -1) #V
	new_font.add_char(0x0057, 0, Rect2(0, 0, 16, 16), align, -1) #W
	new_font.add_char(0x0058, 0, Rect2(0, 0, 16, 16), align, -1) #X
	new_font.add_char(0x0059, 0, Rect2(0, 0, 16, 16), align, -1) #Y
	new_font.add_char(0x005A, 0, Rect2(0, 0, 16, 16), align, -1) #Z
	
	new_font.add_char(0x0061, 0, Rect2(0, 0, 16, 16), align, -1) #a
	new_font.add_char(0x0062, 0 ,Rect2(0, 0, 16, 16), align, -1) #b
	new_font.add_char(0x0063, 0, Rect2(0, 0, 16, 16), align, -1) #c
	new_font.add_char(0x0064, 0, Rect2(0, 0, 16, 16), align, -1) #d
	new_font.add_char(0x0065, 0, Rect2(0, 0, 16, 16), align, -1) #e
	new_font.add_char(0x0066, 0, Rect2(0, 0, 16, 16), align, -1) #f
	new_font.add_char(0x0067, 0, Rect2(0, 0, 16, 16), align, -1) #g
	new_font.add_char(0x0068, 0, Rect2(0, 0, 16, 16), align, -1) #h
	new_font.add_char(0x0069, 0, Rect2(0, 0, 16, 16), align, -1) #i
	new_font.add_char(0x006A, 0, Rect2(0, 0, 16, 16), align, -1) #j
	new_font.add_char(0x006B, 0, Rect2(0, 0, 16, 16), align, -1) #k
	new_font.add_char(0x006C, 0, Rect2(0, 0, 16, 16), align, -1) #l
	new_font.add_char(0x006D, 0, Rect2(0, 0, 16, 16), align, -1) #m
	new_font.add_char(0x006E, 0, Rect2(0, 0, 16, 16), align, -1) #n
	new_font.add_char(0x006F, 0, Rect2(0, 0, 16, 16), align, -1) #o
	new_font.add_char(0x0070, 0, Rect2(0, 0, 16, 16), align, -1) #p
	new_font.add_char(0x0071, 0, Rect2(0, 0, 16, 16), align, -1) #q
	new_font.add_char(0x0072, 0, Rect2(0, 0, 16, 16), align, -1) #r
	new_font.add_char(0x0073, 0, Rect2(0, 0, 16, 16), align, -1) #s
	new_font.add_char(0x0074, 0, Rect2(0, 0, 16, 16), align, -1) #t
	new_font.add_char(0x0075, 0, Rect2(0, 0, 16, 16), align, -1) #u
	new_font.add_char(0x0076, 0, Rect2(0, 0, 16, 16), align, -1) #v
	new_font.add_char(0x0077, 0, Rect2(0, 0, 16, 16), align, -1) #w
	new_font.add_char(0x0078, 0, Rect2(0, 0, 16, 16), align, -1) #x
	new_font.add_char(0x0079, 0, Rect2(0, 0, 16, 16), align, -1) #y
	new_font.add_char(0x007A, 0, Rect2(0, 0, 16, 16), align, -1) #z
	#cyrillic symbols (Russian)
	#Кириллица, русские символы 
	new_font.add_char(0x0410, 0, Rect2(0, 0, 16, 16), align, -1) #A
	new_font.add_char(0x0411, 0, Rect2(0, 0, 16, 16), align, -1) #Б
	new_font.add_char(0x0412, 0, Rect2(0, 0, 16, 16), align, -1) #B
	new_font.add_char(0x0413, 0, Rect2(0, 0, 16, 16), align, -1) #Г
	new_font.add_char(0x0414, 0, Rect2(0, 0, 16, 16), align, -1) #Д
	new_font.add_char(0x0415, 0, Rect2(0, 0, 16, 16), align, -1) #E
	new_font.add_char(0x0416, 0, Rect2(0, 0, 16, 16), align, -1) #Ж
	new_font.add_char(0x0417, 0, Rect2(0, 0, 16, 16), align, -1) #З
	new_font.add_char(0x0418, 0, Rect2(0, 0, 16, 16), align, -1) #И
	new_font.add_char(0x0419, 0, Rect2(0, 0, 16, 16), align, -1) #Й
	new_font.add_char(0x041A, 0, Rect2(0, 0, 16, 16), align, -1) #K
	new_font.add_char(0x041B, 0, Rect2(0, 0, 16, 16), align, -1) #Л
	new_font.add_char(0x041C, 0, Rect2(0, 0, 16, 16), align, -1) #M
	new_font.add_char(0x041D, 0, Rect2(0, 0, 16, 16), align, -1) #H
	new_font.add_char(0x041E, 0, Rect2(0, 0, 16, 16), align, -1) #O
	new_font.add_char(0x041F, 0, Rect2(0, 0, 16, 16), align, -1) #П
	new_font.add_char(0x0420, 0, Rect2(0, 0, 16, 16), align, -1) #P
	new_font.add_char(0x0421, 0, Rect2(0, 0, 16, 16), align, -1) #C
	new_font.add_char(0x0422, 0, Rect2(0, 0, 16, 16), align, -1) #T
	new_font.add_char(0x0423, 0, Rect2(0, 0, 16, 16), align, -1) #У
	new_font.add_char(0x0424, 0, Rect2(0, 0, 16, 16), align, -1) #Ф
	new_font.add_char(0x0425, 0, Rect2(0, 0, 16, 16), align, -1) #X
	new_font.add_char(0x0426, 0, Rect2(0, 0, 16, 16), align, -1) #Ц
	new_font.add_char(0x0427, 0, Rect2(0, 0, 16, 16), align, -1) #Ч
	new_font.add_char(0x0428, 0, Rect2(0, 0, 16, 16), align, -1) #Ш
	new_font.add_char(0x0429, 0, Rect2(0, 0, 16, 16), align, -1) #Щ
	new_font.add_char(0x042D, 0, Rect2(0, 0, 16, 16), align, -1) #Э
	new_font.add_char(0x042E, 0, Rect2(0, 0, 16, 16), align, -1) #Ю
	new_font.add_char(0x042F, 0, Rect2(0, 0, 16, 16), align, -1) #Я
	#
	new_font.add_char(0x0430, 0, Rect2(0, 0, 16, 16), align, -1) #a
	new_font.add_char(0x0431, 0, Rect2(0, 0, 16, 16), align, -1) #б
	new_font.add_char(0x0432, 0 ,Rect2(0, 0, 16, 16), align, -1) #в
	new_font.add_char(0x0433, 0, Rect2(0, 0, 16, 16), align, -1) #г
	new_font.add_char(0x0434, 0, Rect2(0, 0, 16, 16), align, -1) #g
	new_font.add_char(0x0435, 0, Rect2(0, 0, 16, 16), align, -1) #e
	new_font.add_char(0x0436, 0, Rect2(0, 0, 16, 16), align, -1) #ж
	new_font.add_char(0x0437, 0, Rect2(0, 0, 16, 16), align, -1) #з
	new_font.add_char(0x0438, 0, Rect2(0, 0, 16, 16), align, -1) #и
	new_font.add_char(0x0439, 0, Rect2(0, 0, 16, 16), align, -1) #й
	new_font.add_char(0x043A, 0, Rect2(0, 0, 16, 16), align, -1) #k
	new_font.add_char(0x043B, 0, Rect2(0, 0, 16, 16), align, -1) #л
	new_font.add_char(0x043C, 0, Rect2(0, 0, 16, 16), align, -1) #м
	new_font.add_char(0x043D, 0, Rect2(0, 0, 16, 16), align, -1) #н
	new_font.add_char(0x043E, 0, Rect2(0, 0, 16, 16), align, -1) #o
	new_font.add_char(0x043F, 0, Rect2(0, 0, 16, 16), align, -1) #п
	new_font.add_char(0x0440, 0, Rect2(0, 0, 16, 16), align, -1) #p
	new_font.add_char(0x0441, 0, Rect2(0, 0, 16, 16), align, -1) #c
	new_font.add_char(0x0442, 0, Rect2(0, 0, 16, 16), align, -1) #т
	new_font.add_char(0x0443, 0, Rect2(0, 0, 16, 16), align, -1) #y
	new_font.add_char(0x0444, 0, Rect2(0, 0, 16, 16), align, -1) #ф
	new_font.add_char(0x0445, 0, Rect2(0, 0, 16, 16), align, -1) #x
	new_font.add_char(0x0446, 0, Rect2(0, 0, 16, 16), align, -1) #ц
	new_font.add_char(0x0447, 0, Rect2(0, 0, 16, 16), align, -1) #ч
	new_font.add_char(0x0448, 0, Rect2(0, 0, 16, 16), align, -1) #ш
	new_font.add_char(0x0449, 0, Rect2(0, 0, 16, 16), align, -1) #щ
	new_font.add_char(0x044A, 0, Rect2(0, 0, 16, 16), align, -1) #ъ
	new_font.add_char(0x044B, 0, Rect2(0, 0, 16, 16), align, -1) #ы
	new_font.add_char(0x044C, 0, Rect2(0, 0, 16, 16), align, -1) #ь
	new_font.add_char(0x044D, 0, Rect2(0, 0, 16, 16), align, -1) #э
	new_font.add_char(0x044E, 0, Rect2(0, 0, 16, 16), align,  -1) #э
	new_font.add_char(0x044F, 0, Rect2(0, 0, 16, 16), align, -1) #я

	#save the font, the last argument "2" packs all the resources into one file
	#сохраняем шрифт, последний аргумент 2 пакует все ресурсы в один файл
	ResourceSaver.save("res://font.fnt", new_font, 2) 

