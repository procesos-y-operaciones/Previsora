class AddingFeatures < ActiveRecord::Migration[5.1]
  def change
    CurrentStage.create(name: 'AUDIENCIA INICIAL', n_type: 3)
    SubprocessClass.create(name: 'VERBAL CGP', n_type: 23)
    CurrentStage.create([
      {name: 'AUTO ADMISORIO DE LA DEMANDA', n_type: 20},
      {name: 'AUTO ADMISORIO DEL LLAMAMIENTO EN GARANTIA', n_type: 20},
      {name: 'NOTIFICACION', n_type: 20},
      {name: 'CONTESTACION DE LA DEMANDA', n_type: 20},
      {name: 'CONTESTACION LLAMAMIENTO EN GARANTIA', n_type: 20},
      {name: 'AUDIENCIA INICIAL', n_type: 20},
      {name: 'AUDIENCIA DE INSTRUCCION Y JUZGAMIENTO', n_type: 20},
      {name: 'AUDIENCIA DE SUSTENTACION RECURSO DE APELACION', n_type: 20}
    ])
  end
end
