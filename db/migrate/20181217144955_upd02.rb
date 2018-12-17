class Upd02 < ActiveRecord::Migration[5.1]
  def change
    puts TypeProcess.find(22575).update(active_part: 'CONTRALORIA GENERAL DEL DEPARTAMENTO DE CALDAS',state_db: 'REGISTRO MIGRADO SOBRESCRITO')
    puts TypeProcess.find(12811).update(active_part: 'CONTRALORIA DEPARTAMENTAL DEL VALLE DEL CAUCA',state_db: 'REGISTRO MIGRADO SOBRESCRITO')
    puts TypeProcess.find(12475).update(active_part: 'MUNICIPIO DE CAMPAMENTO',state_db: 'REGISTRO MIGRADO SOBRESCRITO')
    puts TypeProcess.find(12465).update(active_part: 'CONTRALORIA GENERAL DE MEDELLIN    ',state_db: 'REGISTRO MIGRADO SOBRESCRITO')
    puts TypeProcess.find(12401).update(active_part: 'CONTRALORIA DEPARTAMENTAL DEL TOLIMA    ',state_db: 'REGISTRO MIGRADO SOBRESCRITO')
    puts TypeProcess.find(12396).update(active_part: 'CONTRALORIA DEPARTAMENTAL DEL TOLIMA    ',state_db: 'REGISTRO MIGRADO SOBRESCRITO')
    puts TypeProcess.find(12373).update(active_part: 'CONTRALORIA DEPARTAMENTAL DEL TOLIMA',state_db: 'REGISTRO MIGRADO SOBRESCRITO')
    puts TypeProcess.find(11908).update(active_part: 'CONTRALORIA DEPARTAMENTAL DE ARAUCA',state_db: 'REGISTRO MIGRADO SOBRESCRITO')
    puts TypeProcess.find(11718).update(active_part: 'CONTRALORIA GENERAL DE BOYACA    ',state_db: 'REGISTRO MIGRADO SOBRESCRITO')
    puts TypeProcess.find(10993).update(active_part: 'CONTRALORIA GENERAL DE LA REPUBLICA    ',state_db: 'REGISTRO MIGRADO SOBRESCRITO')
    puts TypeProcess.find(10778).update(active_part: 'CONTRALORIA DE CUNDINAMARCA',state_db: 'REGISTRO MIGRADO SOBRESCRITO')
    puts TypeProcess.find(10729).update(active_part: 'CONTRALORIA DEPARTAMENTAL DEL TOLIMA    ',state_db: 'REGISTRO MIGRADO SOBRESCRITO')
    puts TypeProcess.find(10569).update(active_part: 'CONTRALORIA DEPARTAMENTAL DEL TOLIMA    ',state_db: 'REGISTRO MIGRADO SOBRESCRITO')
    puts TypeProcess.find(10563).update(active_part: 'CONTRALORIA DEPARTAMENTAL CASANARE    ',state_db: 'REGISTRO MIGRADO SOBRESCRITO')
    puts TypeProcess.find(10271).update(active_part: 'CONTRALORIA GENERAL DE CUNDINAMARCA',state_db: 'REGISTRO MIGRADO SOBRESCRITO')
  end
end
