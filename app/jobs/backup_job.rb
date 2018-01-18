class BackupJob < ApplicationJob

  #RUN_EVERY = 2.week
  RUN_EVERY = 3.second

  queue_as :default

  def perform(*args)
    #require 'open-uri'
    #download = open(coordinator_report_path({:format => :xls}))
    #IO.copy_stream(download, "~/#{download.base_uri.to_s.split('/')[-1]}")
    self.class.perform_later(wait: RUN_EVERY)
  end

end
