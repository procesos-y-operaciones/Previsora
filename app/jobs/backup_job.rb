class BackupJob < ApplicationJob

  #RUN_EVERY = 2.week
  RUN_EVERY = 1.week

  queue_as :default

  def perform(*args)

    Axlsx::Package.new do |p|
      p.workbook.add_worksheet(:name => "Reporte Registro Unico") do |sheet|
        sheet.add_row ["LA PREVISORA SA COMPANIA DE SEGUROS"]
        sheet.add_row ["VICEPRESIDENCIA JURIDICA"]
        sheet.add_row ["REPORTE DE PROCESOS REGISTRADOS"]
        sheet.add_row ["FECHA DE GENERACION: #{Date.today}"]
        sheet.add_row [""]

        sheet.add_row TypeProcess.get_all.total_headers

        TypeProcess.get_all.each do |process|
          sheet.add_row process.get_total_content, :types => [:string]*process.get_content_all.count
        end
      end
      p.serialize("#{Rails.root}/public/files/#{Time.now.to_s}.xlsx")
    end
    puts "Reporte del #{Time.now} creado correctamente."
    self.class.set(wait: RUN_EVERY).perform_later

  end

end
