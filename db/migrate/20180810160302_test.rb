class Test < ActiveRecord::Migration[5.1]

  def change

    for i in 1..20200
      TypeProcess.create(p_type: 1, user_id: 1, creation_date: Date.today)
    end

  end

end
