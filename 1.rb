## Задача №1:
#
# Джон Макклейн пытается найти этаж на котором заложена бомба и у него есть список инструкций (в файле data/1.txt):
#
# (- Джон должен подняться на этаж выше
# ) - Джон должен опуститься на этаж ниже
#
# Поиск начинается с нулевого этажа. 
#
# На каком этаже находится бомба?
#
## Требования к решению:
# - Входные данные находятся в файле data/1.txt
# - Результат должен быть выведен в консоль командой puts
#
#
## Решение:
floor = 0
array = ''
File.open("data/1.txt", 'r') do |file|
  array << file.read.to_s
end
array.each_char do |symbol|
  if symbol == '('
    floor += 1
  elsif symbol == ')'
    floor -= 1
  end
end
puts floor



