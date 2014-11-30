
# Address Stuff

bill_address = @order.bill_address
ship_address = @order.ship_address
anonymous = @order.email =~ /@example.net$/
small_font = 10

@bold = "#{Rails.root}/public/myriadbold.ttf"
@normal = "#{Rails.root}/public/myriad.ttf"

width = 520
width_left = 150
width_right = 310
height = 225
x = 50
y = 200

# 16 x 16
# 408 17 810 5 52090437453


font @bold
move_up -5

font @normal
move_up 3
text_box "Форма № ПД-4", :size => small_font, :at => [width - 60, cursor]

font @bold
move_down 10
text_box Spree::PrintInvoice::Config[:invoice_fiz_name], :at => [width - 260, cursor],:size => 11

font @normal
move_down 15
text_box "(наименование получателя платежа)", :at => [width - 245, cursor], :size=>9

font @bold
move_down 10
text_box "ИНН: "+Spree::PrintInvoice::Config[:invoice_fiz_inn], :at => [181, cursor],:size => 11
text_box "р/с: "+Spree::PrintInvoice::Config[:invoice_fiz_rs], :at => [330, cursor],:size => 11

font @normal
move_down 13
text_box "(ИНН получателя платежа)", :at => [width - 335, cursor], :size=>9
text_box "(Номер счета получателя платежа)", :at => [width - 175, cursor], :size=>9




move_down 25
text_box "в", :at => [width - 360, cursor+12], :size=>12

font @bold
text_box Spree::PrintInvoice::Config[:invoice_fiz_otdelenie], :at => [width - 322, cursor+12], :size=>9

font @normal
text_box "БИК", :at => [width - 130, cursor+12], :size=>12

font @bold
text_box Spree::PrintInvoice::Config[:invoice_fiz_bik], :at => [width - 90, cursor+12], :size=>11

font @normal
text_box "(наименование банка получателя)", :at => [width - 295, cursor], :size=>9

move_down 12
text_box "Номер кор.сч. банка получателя платежа", :at => [width - 360, cursor], :size=>11

font @bold
text_box  Spree::PrintInvoice::Config[:invoice_fiz_korsch], :at => [width -190, cursor], :size=>11

move_down 16
text_box "Оптала заказа № "+@order.number, :at => [width -350, cursor], :size=>11

font @normal
text_box "(наименование платежа)", :at => [width - 320, cursor-12], :size=>9
text_box "(номер лицевого счета (код) плательщика)", :at => [width - 165, cursor-12], :size=>9

move_down 22
text_box "Ф.И.О плательщика", :at => [width - 360, cursor], :size=>11
text_box bill_address.firstname+" "+bill_address.lastname, :at => [width - 265, cursor], :size=>12

move_down 16
text_box "Адрес плательщика", :at => [width - 360, cursor], :size=>11

adress = bill_address.zipcode+", "+bill_address.city+", "+bill_address.address1
text_box adress, :at => [width - 265, cursor], :size=>11

move_down 15
text_box "Сумма платежа", :at => [width - 360, cursor], :size=>11

font @bold
text_box @order.display_total.to_s, :at => [width - 298, cursor], :size=>11

font @normal
text_box "Сумма платы за услуги_____руб.____коп", :at => [width - 166, cursor], :size=>11

move_down 15
text_box "Итого__________руб.___коп", :at => [width - 360, cursor], :size=>11

text_box '"___"___________________г.', :at => [width - 116, cursor], :size=>11

move_down 15
text_box "С условиями приема указанной в платежном документе суммы, в т.ч. с суммой взимаемой платы за услуги банка ознакомлен и согласен.", :at => [width - 360, cursor], :size=>9

move_down 26
font @bold
text_box "Подпись плательщика_____________________", :at => [width - 216, cursor], :size=>10

move_up 110
text_box "Кассир", :at => [62, cursor], :size=>10

horizontal_line 160, 510, :at => 200

horizontal_line 160, 280, :at => 177
horizontal_line 295, 510, :at => 177

horizontal_line 170, 380, :at => 151
horizontal_line 410, 510, :at => 151

horizontal_line 330, 510, :at => 127

horizontal_line 160, 325, :at => 111
horizontal_line 335, 510, :at => 111

horizontal_line 245, 510, :at => 89
horizontal_line 245, 510, :at => 74

vertical_line 0, height, :at => width_left











