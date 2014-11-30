module Spree
  class PrintInvoiceConfiguration < Preferences::Configuration

    preference :print_invoice_next_number, :integer, :default => nil
    preference :print_invoice_logo_path, :string, :default => Spree::Config[:admin_interface_logo]
    preference :print_invoice_logo_scale, :integer, :default => 50
    preference :print_invoice_font_face, :string, :default => 'Helvetica'
    preference :print_buttons, :string, :default => 'invoice'
    preference :prawn_options, :hash, :default => {}

    preference :invoice_fiz_name, :string, :default => "Ваганов Игорь Станиславович"
    preference :invoice_fiz_inn, :string, :default => "232907433491"
    preference :invoice_fiz_rs, :string, :default => "40817810552090437453"
    preference :invoice_fiz_otdelenie, :string, :default => "Отделение №5221 Сбербанка России"
    preference :invoice_fiz_bik, :string, :default => "046015602"
    preference :invoice_fiz_korsch, :string, :default => "30101810600000000602"


    def use_sequential_number?
      print_invoice_next_number.present? && print_invoice_next_number > 0
    end

    def increase_invoice_number
      current_invoice_number = print_invoice_next_number
      set_preference(:print_invoice_next_number, current_invoice_number + 1)
      current_invoice_number
    end

  end
end
