class CreateFileJob < ApplicationJob

  queue_as :default

  def perform(*args)
    # Do something later
    directory = Dir.glob("#{Rails.root}/public/reports/")
    File.open(File.join(directory, Time.now.to_s + '.xlsx'), 'w') do |f|
      f.puts(header)
      f.puts("<Row>HOLA</Row>")
      f.puts(footer)
    end
  end

  def header
    '<?xml version="1.0"?>
    <Workbook xmlns="urn:schemas-microsoft-com:office:spreadsheet"
      xmlns:o="urn:schemas-microsoft-com:office:office"
      xmlns:x="urn:schemas-microsoft-com:office:excel"
      xmlns:ss="urn:schemas-microsoft-com:office:spreadsheet"
      xmlns:html="http://www.w3.org/TR/REC-html40">

      <Worksheet ss:Name="ReporteRegistroUnico">

        <Table>

          <Row>
            <Cell>
              <Data ss:Type="String">
                <%= "LA PREVISORA SA COMPANIA DE SEGUROS" %>
              </Data>
            </Cell>
          </Row>

          <Row>
            <Cell>
              <Data ss:Type="String">
                <%= "VICEPRESIDENCIA JURIDICA" %>
              </Data>
            </Cell>
          </Row>

          <Row>
            <Cell>
              <Data ss:Type="String">
                <%= "REPORTE DE PROCESOS REGISTRADOS" %>
              </Data>
            </Cell>
          </Row>

          <Row></Row>
      '
  end

  def footer
    '</Table>

      </Worksheet>

    </Workbook>'
  end

end
