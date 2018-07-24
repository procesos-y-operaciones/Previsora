class CreateFileJob < ApplicationJob

  queue_as :default

  def perform(*args)
    # Do something later
    Axlsx::Package.new do |p|
      p.workbook.add_worksheet(name: "Reporte Registro Unico") do |sheet|
         sheet.add_row args[0].column_names_all
         args[0].each do |process|
           sheet.add_row process.get_content_all
         end
      end
      p.serialize("#{Rails.root}/tmp/xls/#{Date.today.to_s}.xlsx")
    end
  end

end
