class BackupJob < ApplicationJob

  #RUN_EVERY = 2.week
  RUN_EVERY = 10.second

  queue_as :default

  def perform(*args)

    #require 'open-uri'
    #download = open(coordinator_report_path({:format => :xls}))
    #IO.copy_stream(download, "~/#{download.base_uri.to_s.split('/')[-1]}")

    directory = Dir.glob("#{Rails.root}/public/files/")
    File.open(File.join(directory, 'Test.xls'), 'w') do |f|
      f.puts TypeProcess.all.to_csv("01-01-1980", Time.now, col_sep: "\t")
    end

    puts "Executing"
    #self.class.perform_later(wait: RUN_EVERY)
    #self.class.perform_later
    self.class.set(wait: RUN_EVERY).perform_later
  end

end
