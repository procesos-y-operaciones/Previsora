class AddingMoreCurrentStage < ActiveRecord::Migration[5.1]
  def change
    CurrentStage.create([
        {name: 'AUTO ADMITE LLAMAMIENTO EN GARANTIA', n_type: 99},
        {name: 'CONTESTACION LLAMAMIENTO EN GARANTIA', n_type: 99}
      ])
  end
end
