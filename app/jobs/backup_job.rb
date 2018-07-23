class BackupJob < ApplicationJob

  #RUN_EVERY = 2.week
  RUN_EVERY = 1.week

  queue_as :default

  def perform(*args)

    directory = Dir.glob("#{Rails.root}/public/files/")
    File.open(File.join(directory, Time.now.to_s + '.xls'), 'w') do |f|
      f.puts TypeProcess.all.to_csv("01-01-1980", Time.now, col_sep: "\t")
    end
    puts "Reporte del #{Time.now} creado correctamente."
    self.class.set(wait: RUN_EVERY).perform_later

  end

end
