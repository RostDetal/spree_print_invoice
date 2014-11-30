require 'prawn/layout'


font "#{Rails.root}/public/myriadbold.ttf"
bounding_box([0, 700], :width => 520, :height => 225) do
    text_box "Извещение", :at => [45, cursor-4]
    render :partial => "fill_block"
    stroke_bounds
end

bounding_box([0, 474], :width => 520, :height => 225) do
text_box "Квитанция", :at => [45, cursor-4]
    render :partial => "fill_block"
    stroke_bounds
end

move_down 10
text_box "Примечания:", :at => [45, cursor], :size=>9

move_down 10
font "#{Rails.root}/public/myriad.ttf"
text_box "Цена действительна в течение 3 каледнарных дней:", :at => [45, cursor], :size=>10
