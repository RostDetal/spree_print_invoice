require 'prawn/layout'


small_font = 6
height_part = 200
full_width = 530

font "#{Rails.root}/public/myriadbold.ttf"
bounding_box([-160, 600], :width => 520, :height => 225) do
    text_box "Извещение", :at => [45, cursor-4]
    render :partial => "fill_block"
    stroke_bounds
end

bounding_box([-160, 374], :width => 520, :height => 225) do
text_box "Квитанция", :at => [45, cursor-4]
    render :partial => "fill_block"
    stroke_bounds
end

#stroke_axis




