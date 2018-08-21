class SecretsController < ApplicationController

  def new
    @secret = TypeProcess.new
    @secret.creation_date = Date.today
  end

end
