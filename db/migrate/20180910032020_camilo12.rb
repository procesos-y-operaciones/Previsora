class Camilo12 < ActiveRecord::Migration[5.1]
  def change
    puts TypeProcess.find(3).update(reason_inv: 'SE SUGIERE ESPERAR EL DESARROLLO DEL DEBATE PROBATORIO',state: 'REGISTRO MIGRADO SOBRESCRITO')
    puts TypeProcess.find(269).update(reason_inv: 'SE RECOMIENDA ESPERAR EL DESARROLLO DEL DEBATE PROBATORIO ',state: 'REGISTRO MIGRADO SOBRESCRITO')
    puts TypeProcess.find(279).update(reason_inv: 'SE SUGIERE ESPERAR EL DESARROLLO DEL DEBATE PROBATORIO',state: 'REGISTRO MIGRADO SOBRESCRITO')
    puts TypeProcess.find(376).update(reason_inv: 'SE SUGIERE EL DESARROLLO DEL DEBATE PROBATORIO',state: 'REGISTRO MIGRADO SOBRESCRITO')
    puts TypeProcess.find(1264).update(reason_inv: 'SE DESISTIO DEL PROCESO POR ESTA LA ACCION PRESCRITA',state: 'REGISTRO MIGRADO SOBRESCRITO')
    puts TypeProcess.find(1284).update(reason_inv: 'PRESCRIBIO ACCION CAMBIARIA HUBO PAGO COSTAS POR TREINTA Y NUEVE MILLONES DE PESOS',state: 'REGISTRO MIGRADO SOBRESCRITO')
    puts TypeProcess.find(1293).update(reason_inv: 'EL SALDO INSOLUTO NO SE PUDO RECUPERAR PORQUE LA DEMANDADA NO TENIA MAS BIENES QUE EMBARGAR APARTE DEL INMUEBLE HIPOTECADO EN SEGUNDO GRADO',state: 'REGISTRO MIGRADO SOBRESCRITO')
    puts TypeProcess.find(1314).update(reason_inv: 'PROCESO TERMINO POR DESISTIMIENTO TACITO',state: 'REGISTRO MIGRADO SOBRESCRITO')
    puts TypeProcess.find(1361).update(reason_inv: 'OBLIGACION PRESCRITA QUE NO FUE RECONOCIDA EN EL INTERROGATORIO',state: 'REGISTRO MIGRADO SOBRESCRITO')
    puts TypeProcess.find(1482).update(reason_inv: 'NO SE LOGRO RECUPERAR NINGUN VALOR PORQUE EL DEUDOR NO TIENE BIENES',state: 'REGISTRO MIGRADO SOBRESCRITO')
    puts TypeProcess.find(1501).update(reason_inv: 'NO SE LOGRO EMBARGO DE BIENES DEL DEMANDADO',state: 'REGISTRO MIGRADO SOBRESCRITO')
    puts TypeProcess.find(1514).update(reason_inv: 'RECOBRO SIN RESULTADOS POSITIVOS',state: 'REGISTRO MIGRADO SOBRESCRITO')
    puts TypeProcess.find(1517).update(reason_inv: 'DE CONFORMIDAD CON LAS PRUEBAS OBRANTES NO SE OBSERVA QUE EXISTA ALGUN TIPO DE FALLA U OMISION QUE PUDIESE GENERAR UNA RESPONSABILIDAD CIVIL A CARGO DE LA ENTIDAD ASEGURADA',state: 'REGISTRO MIGRADO SOBRESCRITO')
    puts TypeProcess.find(1671).update(reason_inv: 'NO SE PRESENTO FORMULA CONCILIATORIA ',state: 'REGISTRO MIGRADO SOBRESCRITO')
    puts TypeProcess.find(1680).update(reason_inv: 'NO SE PRESENTO FORMULA CONCILIATORIA',state: 'REGISTRO MIGRADO SOBRESCRITO')
    puts TypeProcess.find(1681).update(reason_inv: 'SE DECLARO FALLIDA LA AUDIENCIA DE CONCILIACION',state: 'REGISTRO MIGRADO SOBRESCRITO')
    puts TypeProcess.find(1683).update(reason_inv: 'NO SE LOGRO EL EMBARGO DE ACTIVOS DEL DEMANDADO',state: 'REGISTRO MIGRADO SOBRESCRITO')
    puts TypeProcess.find(1689).update(reason_inv: 'NO SE PRESENTO FORMULA CONCILIATORIA',state: 'REGISTRO MIGRADO SOBRESCRITO')
    puts TypeProcess.find(1697).update(reason_inv: 'NO SE PRESENTO FORMULA CONCILIATORIA',state: 'REGISTRO MIGRADO SOBRESCRITO')
    puts TypeProcess.find(1698).update(reason_inv: 'NO SE RECUPERO SI NO UNA PARTE DEL CREDITO Y NO HAY MAS BIENES PARA EMBARGAR DE LA DEMANDADA',state: 'REGISTRO MIGRADO SOBRESCRITO')
    puts TypeProcess.find(1699).update(reason_inv: 'SE RECUPERO SOLAMENTE UNA PARTE DEL CREDITO Y QUEDO PENDIENTE LA RECUPERACION DEL RESTO PORQUE NO HAY MAS BIENES',state: 'REGISTRO MIGRADO SOBRESCRITO')
    puts TypeProcess.find(1721).update(reason_inv: 'NO SE PRESENTO FORMULA CONCILIATORIA ',state: 'REGISTRO MIGRADO SOBRESCRITO')
    puts TypeProcess.find(1739).update(reason_inv: ' NO SE PRESENTO FORMULA CONCILIATORIA ',state: 'REGISTRO MIGRADO SOBRESCRITO')
    puts TypeProcess.find(1770).update(reason_inv: 'SUJETO A RESULTADOS DE AUDIENCIA INICIAL',state: 'REGISTRO MIGRADO SOBRESCRITO')
    puts TypeProcess.find(1789).update(reason_inv: 'SUJETOS AL RESULTADO DE LA AUDIENCIA INICIAL',state: 'REGISTRO MIGRADO SOBRESCRITO')
    puts TypeProcess.find(1791).update(reason_inv: 'LA ETAPA DE CONCILIACION JUDICIAL SE DECLARO FALLIDA EN LA AUDIENCIA INICIAL',state: 'REGISTRO MIGRADO SOBRESCRITO')
    puts TypeProcess.find(1801).update(reason_inv: 'LA ETAPA DE CONCILIACION JUDICIAL SE DECLARO FALLIDA EN LA AUDIENCIA INICIAL',state: 'REGISTRO MIGRADO SOBRESCRITO')
    puts TypeProcess.find(1824).update(reason_inv: 'NO SE LOGRO EL EMBARGO DE NINGUN ACTIVO DE LOS DEMANDADOS',state: 'REGISTRO MIGRADO SOBRESCRITO')
    puts TypeProcess.find(1833).update(reason_inv: 'RECOBRO FALLIDO - NO HAY BIENES PARA EMBARGAR',state: 'REGISTRO MIGRADO SOBRESCRITO')
    puts TypeProcess.find(1838).update(reason_inv: 'LA ETAPA DE CONCILIACION JUDICIAL SE DECLARO FALLIDA',state: 'REGISTRO MIGRADO SOBRESCRITO')
    puts TypeProcess.find(1883).update(reason_inv: 'LA ETAPA DE CONCILIACION JUDICIAL SE CERRO COMO FALLIDA',state: 'REGISTRO MIGRADO SOBRESCRITO')
    puts TypeProcess.find(1890).update(reason_inv: 'LA ETAPA DE CONCILIACION JUDICIAL SE DECLARO FALLIDA EN LA AUDIENCIA INICIAL',state: 'REGISTRO MIGRADO SOBRESCRITO')
    puts TypeProcess.find(1905).update(reason_inv: 'LA ETAPA DE CONCILIACION JUDICIAL SE DECLARO FALLIDA EN LA AUDIENCIA INICIAL',state: 'REGISTRO MIGRADO SOBRESCRITO')
    puts TypeProcess.find(1915).update(reason_inv: 'CONCILIACION JUDICIAL CERRADA COMO FALLIDA',state: 'REGISTRO MIGRADO SOBRESCRITO')
    puts TypeProcess.find(1919).update(reason_inv: 'LA ETAPA DE CONCILIACION JUDICIAL SE CERRO COMO FALLIDA',state: 'REGISTRO MIGRADO SOBRESCRITO')
    puts TypeProcess.find(1920).update(reason_inv: 'NO SE HA CITADO A AUDIENCIA',state: 'REGISTRO MIGRADO SOBRESCRITO')
    puts TypeProcess.find(1921).update(reason_inv: 'SE CERRO LA ETAPA DE CONCILIACION JUDICIAL COMO FALLIDA',state: 'REGISTRO MIGRADO SOBRESCRITO')
    puts TypeProcess.find(1926).update(reason_inv: 'SE CERRO LA ETAPA DE CONCILIACION COMO FALLIDA',state: 'REGISTRO MIGRADO SOBRESCRITO')
    puts TypeProcess.find(1950).update(reason_inv: 'LA ETAPA SE DECLARO FALLIDA',state: 'REGISTRO MIGRADO SOBRESCRITO')
    puts TypeProcess.find(1971).update(reason_inv: 'SE CERRO LA ETAPA CONCILIATORIA COMO FALLIDA',state: 'REGISTRO MIGRADO SOBRESCRITO')
    puts TypeProcess.find(1987).update(reason_inv: 'SE DECLARO FALLIDA LA ETAPA DE CONCILIACION',state: 'REGISTRO MIGRADO SOBRESCRITO')
    puts TypeProcess.find(2006).update(reason_inv: 'SE CERRO EL PERIODO DE CONCILIACION COMO FALLIDO',state: 'REGISTRO MIGRADO SOBRESCRITO')
    puts TypeProcess.find(2014).update(reason_inv: 'SE DECLARO FALLIDA LA ETAPA DE CONCILIACION EN LA AUDIENCIA INICIAL DE PRIMERA Y SEGUNDA INSTANCIA',state: 'REGISTRO MIGRADO SOBRESCRITO')
    puts TypeProcess.find(2020).update(reason_inv: 'LA ETAPA DE CONCILIACION JUDICIAL SE CERRO COMO FALLIDA EN LA AUDIENCIA INICIAL',state: 'REGISTRO MIGRADO SOBRESCRITO')
    puts TypeProcess.find(2032).update(reason_inv: 'SE CERRO COMO FALLIDA LA ETAPA DE CONCILIACION JUDICIAL',state: 'REGISTRO MIGRADO SOBRESCRITO')
    puts TypeProcess.find(2047).update(reason_inv: 'EN AUDIENCIA INICIAL SE DECLARO FALLIDA LA ETAPA DE CONCILIACION',state: 'REGISTRO MIGRADO SOBRESCRITO')
    puts TypeProcess.find(2060).update(reason_inv: 'LA ETAPA DE CONCILIACION SE DECLARO FALLIDA EN LA AUDIENCIA INICIAL',state: 'REGISTRO MIGRADO SOBRESCRITO')
    puts TypeProcess.find(2369).update(reason_inv: 'ESTE PROCESO FUE RADICADO Y ACTUALIZADO EN OTRO RADICADO',state: 'REGISTRO MIGRADO SOBRESCRITO')
    puts TypeProcess.find(3849).update(reason_inv: 'EN AUDIENCIA INICIAL SE DECLARO FALLIDA LA ETAPA DE CONCILIACION',state: 'REGISTRO MIGRADO SOBRESCRITO')
    puts TypeProcess.find(3865).update(reason_inv: 'LA ETAPA DE CONCILIACION SE DECLARO FALLIDA EN LA AUDIENCIA INICIAL',state: 'REGISTRO MIGRADO SOBRESCRITO')
    puts TypeProcess.find(3871).update(reason_inv: 'LA ETAPA DE CONCILIACION SE DECLARO FALLIDA EN LA AUDIENCIA INICIAL',state: 'REGISTRO MIGRADO SOBRESCRITO')
    puts TypeProcess.find(3898).update(reason_inv: 'LA ETAPA DE CONCILIACION JUDICIAL SE DECLARO FALLIDA EN AUDIENCIA INICIAL',state: 'REGISTRO MIGRADO SOBRESCRITO')
    puts TypeProcess.find(3900).update(reason_inv: 'LA ETAPA DE CONCILIACION JUDICIAL SE DECLARO FALLIDA',state: 'REGISTRO MIGRADO SOBRESCRITO')
    puts TypeProcess.find(3901).update(reason_inv: 'LA ETAPA DE CONCILIACION JUDICIAL SE DECLARO FALLIDA',state: 'REGISTRO MIGRADO SOBRESCRITO')
    puts TypeProcess.find(3918).update(reason_inv: 'LA ETAPA DE CONCILIACION JUDICIAL SE DECLARO FALLIDA EN AUDIENCIA INICIAL',state: 'REGISTRO MIGRADO SOBRESCRITO')
    puts TypeProcess.find(3926).update(reason_inv: 'EN AUDIENCIA INICIAL DE DECLARO FALLIDA LA ETAPA DE CONCILIACION',state: 'REGISTRO MIGRADO SOBRESCRITO')
    puts TypeProcess.find(3928).update(reason_inv: 'SE DECLARO FALLIDA LA ETAPA EN LA AUDIENCIA DEL 180',state: 'REGISTRO MIGRADO SOBRESCRITO')
    puts TypeProcess.find(3935).update(reason_inv: 'AUSENCIA DE ANIMO CONCILIATORIO',state: 'REGISTRO MIGRADO SOBRESCRITO')
    puts TypeProcess.find(3936).update(reason_inv: 'AUSENCIA DE ANIMO CONCILIATORIOO',state: 'REGISTRO MIGRADO SOBRESCRITO')
    puts TypeProcess.find(3941).update(reason_inv: 'AUSENCIA DE ANIMO CONCILIATORIO',state: 'REGISTRO MIGRADO SOBRESCRITO')
    puts TypeProcess.find(3946).update(reason_inv: 'AUSENCIA DE ANIMO CONCILIATORIO',state: 'REGISTRO MIGRADO SOBRESCRITO')
    puts TypeProcess.find(3948).update(reason_inv: 'AUSENCIA DE ANIMO CONCILIATORIO',state: 'REGISTRO MIGRADO SOBRESCRITO')
    puts TypeProcess.find(3973).update(reason_inv: 'AUSENCIA DE ANIMO CONCILIATORIO',state: 'REGISTRO MIGRADO SOBRESCRITO')
    puts TypeProcess.find(4114).update(reason_inv: 'AUSENCIA DE ANIMO CONCILIATORIO',state: 'REGISTRO MIGRADO SOBRESCRITO')
    puts TypeProcess.find(4129).update(reason_inv: 'AUSENCIA DE ANIMO CONCILIATORIO',state: 'REGISTRO MIGRADO SOBRESCRITO')
    puts TypeProcess.find(4247).update(reason_inv: 'AUSENCIA DE ANIMO CONCILIATORIO',state: 'REGISTRO MIGRADO SOBRESCRITO')
    puts TypeProcess.find(4442).update(reason_inv: 'NO ES CLARA LA REPONSABILIDAD DEL ASEGURADO ATENDIENDO A QUE PODEMOS ESTAR INMERSOS ANTE UNA CAUSAL EXIMIENTE DE RESPONSABILIDAD DENOMINADA  FUERZA MAYOR O CASO FORTUITO DEBIDO A QUE LA CONFLAGRACION FUE A CAUSA DE UN FENOMENO NATURAL',state: 'REGISTRO MIGRADO SOBRESCRITO')
    puts TypeProcess.find(4803).update(reason_inv: 'AUSENCIA DE ANIMO CONCILIATORIO',state: 'REGISTRO MIGRADO SOBRESCRITO')
    puts TypeProcess.find(4900).update(reason_inv: 'INEXISTENCIA DE ANIMO CONCILIATORIO',state: 'REGISTRO MIGRADO SOBRESCRITO')
    puts TypeProcess.find(5272).update(reason_inv: 'AUN NO SE HA AGOTADO LA ETAPA CONCILIATORIOA',state: 'REGISTRO MIGRADO SOBRESCRITO')
    puts TypeProcess.find(5321).update(reason_inv: 'NO EXISTIO CULPA EN LA ATENCION MEDICA BRINDADA A LA PACIENTE Y EL DESENLACE SE DEBIO A UNA EVOLUCION DESFAVORABLE DEL ESTADO DE EMBARAZO CONSTITUTIVA EN UN RIESGO INHERENTE',state: 'REGISTRO MIGRADO SOBRESCRITO')
    puts TypeProcess.find(5330).update(reason_inv: 'NO CONCILIAR PUES NO SE ENCUENTRA ACREDITADA LA RESPONSABILIDAD DEL ASEGURADO',state: 'REGISTRO MIGRADO SOBRESCRITO')
    puts TypeProcess.find(5361).update(reason_inv: 'POR FALLO DE PRIMERA INSTANCIA FAVORABLE A LOS INTERESES DE LA COMPANIA',state: 'REGISTRO MIGRADO SOBRESCRITO')
    puts TypeProcess.find(5371).update(reason_inv: 'TENIENDO EN CUENTA EL FALLO DE PRIMERA INSTANCIA FAVORABLE NO SE SOMETE A COMITE DE CONCILIACION',state: 'REGISTRO MIGRADO SOBRESCRITO')
    puts TypeProcess.find(5372).update(reason_inv: 'SENTENCIA DE PRIMERA INSTANCIA FAVORABLE PARA AMBAS ENTIDADES ASEGURADAS TANTO ESE MARCO FIDEL SUAREZ Y ESE HOSPITAL SAN FERNANDO DE AMAGA',state: 'REGISTRO MIGRADO SOBRESCRITO')
    puts TypeProcess.find(5374).update(reason_inv: 'SENTENCIA DE PRIMERA INSTANCIA FAVORABLE',state: 'REGISTRO MIGRADO SOBRESCRITO')
    puts TypeProcess.find(5377).update(reason_inv: 'PROCESO FAVORABLE TANTO EN PRIMERA COMO EN SEGUNDA INSTANCIA',state: 'REGISTRO MIGRADO SOBRESCRITO')
    puts TypeProcess.find(5380).update(reason_inv: 'EL DICTAMEN PERICIAL DEL CENDES DURANTE EL DEBATE PROBATORIO FUE QUE TRAS EVALUAR LA HISTORIA CLINICA DEL PACIENTE SE EVIDENCIA QUE SE SIGUIERON LOS PROTOCOLOS DE MANEJO ADECUADOS PARA ESTE TIPO DE PACIENTES',state: 'REGISTRO MIGRADO SOBRESCRITO')
    puts TypeProcess.find(5404).update(reason_inv: 'AUSENCIA DE ANIMO CONCILIATORIO ',state: 'REGISTRO MIGRADO SOBRESCRITO')
    puts TypeProcess.find(5418).update(reason_inv: 'AUSENCIA DE ANIMO CONCILIATORIO',state: 'REGISTRO MIGRADO SOBRESCRITO')
    puts TypeProcess.find(5474).update(reason_inv: 'AUSENCIA DE ANIMO CONCILIATORIO',state: 'REGISTRO MIGRADO SOBRESCRITO')
    puts TypeProcess.find(5485).update(reason_inv: 'AUSENCIA DE ANIMO CONCILIATORIO',state: 'REGISTRO MIGRADO SOBRESCRITO')
    puts TypeProcess.find(5507).update(reason_inv: 'EXISTE SENTENCIA DE PRIMERA INSTANCIA FAVORABLE Y LAS PRUEBAS INDICAN QUE EL DESLIZAMIENTO OBEDECE A CAUSAS NATURALES',state: 'REGISTRO MIGRADO SOBRESCRITO')
    puts TypeProcess.find(5514).update(reason_inv: 'NO EXISTEN MEDIOS DE PRUEBA QUE INDIQUEN LA PRESENCIA DE UNA FALLA EN EL SERVICIO',state: 'REGISTRO MIGRADO SOBRESCRITO')
    puts TypeProcess.find(5517).update(reason_inv: 'NO EXISTEN PRUEBAS QUE DEMUESTREN LA PRESENCIA DE UN ACTUAR NEGLIGENTE O DESCUIDADO DEL PERSONAL MEDICO',state: 'REGISTRO MIGRADO SOBRESCRITO')
    puts TypeProcess.find(5518).update(reason_inv: 'EXISTENCIA SENTENCIA DE PRIMERA INSTANCIA FAVORABLE',state: 'REGISTRO MIGRADO SOBRESCRITO')
    puts TypeProcess.find(5733).update(reason_inv: 'SENTENCIA DE PRIMERA INSTANCIA FAVORABLE Y ACORDE CON LAS PRUEBAS RECAUDADAS',state: 'REGISTRO MIGRADO SOBRESCRITO')
    puts TypeProcess.find(5745).update(reason_inv: 'SENTENCIA DE PRIMERA INSTANCIA FAVORABLE',state: 'REGISTRO MIGRADO SOBRESCRITO')
    puts TypeProcess.find(5746).update(reason_inv: 'EVENTO NO CUBIERTO',state: 'REGISTRO MIGRADO SOBRESCRITO')
    puts TypeProcess.find(5748).update(reason_inv: 'LA POLIZA CARECE DE COBERTURA',state: 'REGISTRO MIGRADO SOBRESCRITO')
    puts TypeProcess.find(5762).update(reason_inv: 'SENTENCIA DE PRIMERA INSTANCIA FAVORABLE',state: 'REGISTRO MIGRADO SOBRESCRITO')
    puts TypeProcess.find(5770).update(reason_inv: 'AUSENCIA DE COBERTURA DEL CONTRATO DE SEGURO DEBIDO A QUE LOS RECLUSOS NO SE CONSTITUYEN COMO TERCEROS',state: 'REGISTRO MIGRADO SOBRESCRITO')
    puts TypeProcess.find(5776).update(reason_inv: 'SENTENCIA DE PRIMERA INSTANCIA FAVORABLE',state: 'REGISTRO MIGRADO SOBRESCRITO')
    puts TypeProcess.find(5777).update(reason_inv: 'SENTENCIA DE PRIMERA INSTANCIA FAVORABLE',state: 'REGISTRO MIGRADO SOBRESCRITO')
    puts TypeProcess.find(5781).update(reason_inv: 'NO EXISTE NINGUNA PRUEBA QUE ACREDITE LA CULPA DE LA ENTIDAD ASEGURADA',state: 'REGISTRO MIGRADO SOBRESCRITO')
    puts TypeProcess.find(5793).update(reason_inv: 'LA POLIZA NO EXTIENDE COBERTURA A RECLUSOS',state: 'REGISTRO MIGRADO SOBRESCRITO')
    puts TypeProcess.find(5807).update(reason_inv: 'LA PARTE DEMANDANTE DESISTE DE LAS PRETENSIONES Y EL JUZGADO ACEPTA EL DESISTIMIENTO SIN CONDENA EN COSTAS',state: 'REGISTRO MIGRADO SOBRESCRITO')
    puts TypeProcess.find(5832).update(reason_inv: 'SENTENCIA DE PRIMERA INSTANCIA FAVORABLE',state: 'REGISTRO MIGRADO SOBRESCRITO')
    puts TypeProcess.find(5838).update(reason_inv: 'AUSENCIA DE COBERTURA',state: 'REGISTRO MIGRADO SOBRESCRITO')
    puts TypeProcess.find(5934).update(reason_inv: 'NO EXISTEN PRUEBAS QUE ACREDITEN LA PRESENCIA DE UNA FALLA EN EL SERVICIO',state: 'REGISTRO MIGRADO SOBRESCRITO')
    puts TypeProcess.find(5964).update(reason_inv: 'NO EXISTE ACERVO PROBATORIO O CIENTIFICO QUE ACREDITE QUE LA ASEGURADA INCURRIO EN MALA PRAXIS EN SU ATENCION DEL MENOR',state: 'REGISTRO MIGRADO SOBRESCRITO')
    puts TypeProcess.find(5988).update(reason_inv: 'NO EXISTE PRUEBA QUE RESPALDE QUE LA LESION DE COLUMNA DE LA DEMANDANTE SEA PRODUCTO DE INYECCION APLICADA EN LA PIERNA EN LA ENTIDAD ASEGURADA',state: 'REGISTRO MIGRADO SOBRESCRITO')
    puts TypeProcess.find(6043).update(reason_inv: 'SE SUGIERE ESPERAR EL DEBATE PROBATORIO',state: 'REGISTRO MIGRADO SOBRESCRITO')
    puts TypeProcess.find(6066).update(reason_inv: 'EXISTE FALTA DE COBERTURA EN LA POLIZA OBJETO DE VINCULACION',state: 'REGISTRO MIGRADO SOBRESCRITO')
    puts TypeProcess.find(6079).update(reason_inv: 'INEXISTENCIA DE ANIMO CONCILIATORIO',state: 'REGISTRO MIGRADO SOBRESCRITO')
    puts TypeProcess.find(6081).update(reason_inv: 'NO SE HA SURTIDO LA ETAPA CONCILIATORIA ',state: 'REGISTRO MIGRADO SOBRESCRITO')
    puts TypeProcess.find(6088).update(reason_inv: 'ESPERAR EL FALLO DE PRIMERA INSTANCIA',state: 'REGISTRO MIGRADO SOBRESCRITO')
    puts TypeProcess.find(6096).update(reason_inv: 'SE SUGIERE EL FALLO EN SEGUNDA INSTANCIA ',state: 'REGISTRO MIGRADO SOBRESCRITO')
    puts TypeProcess.find(6101).update(reason_inv: 'AUSENCIA DE ANIMO CONCILIATORIO',state: 'REGISTRO MIGRADO SOBRESCRITO')
    puts TypeProcess.find(6121).update(reason_inv: 'SE SUGIERE EL DESARROLLO DEL DEBATE PROBATORIO',state: 'REGISTRO MIGRADO SOBRESCRITO')
    puts TypeProcess.find(6155).update(reason_inv: 'SE SUGIERE ESPERAR EL FALLO',state: 'REGISTRO MIGRADO SOBRESCRITO')
    puts TypeProcess.find(6220).update(reason_inv: 'NO EXISTE RESPALDO PROBATORIO O CIENTIFICO QUE ACREDITE QUE HUBO MALA PRAXIS POR PARTE DE LA ENTIDAD ASEGURADA',state: 'REGISTRO MIGRADO SOBRESCRITO')
    puts TypeProcess.find(6221).update(reason_inv: 'NO SE EXISTE RESPALDO PROBATORIO O CIENTIFICO QUE ACREDITE QUE HUBO MALA PRAXIS POR PARTE DE LA ENTIDAD DE SALUD ASEGURADA',state: 'REGISTRO MIGRADO SOBRESCRITO')
    puts TypeProcess.find(6242).update(reason_inv: 'AUN NO SE HA AGOTADO LA ETAPA DE CONCILIACION',state: 'REGISTRO MIGRADO SOBRESCRITO')
    puts TypeProcess.find(6258).update(reason_inv: 'NO EXISTE ANIMO CONCILIATORIO',state: 'REGISTRO MIGRADO SOBRESCRITO')
    puts TypeProcess.find(6271).update(reason_inv: 'AUSENCIA DE ANIMO CONCILIATORIO',state: 'REGISTRO MIGRADO SOBRESCRITO')
    puts TypeProcess.find(6290).update(reason_inv: 'AUSENCIA DE ANIMO CONCILIATORIO',state: 'REGISTRO MIGRADO SOBRESCRITO')
    puts TypeProcess.find(6300).update(reason_inv: 'SE SUGIERE ESPERAR EL DESARROLLO DEL DEBATE PROBATORIO',state: 'REGISTRO MIGRADO SOBRESCRITO')
    puts TypeProcess.find(6335).update(reason_inv: 'POR PARTE DE LOS DEMANDANTES EN RELACION CON LA SUPUESTA RESPONSABILIDAD EN MATERIA DE RESPONSABILIDAD SE DEBE PROBARSE',state: 'REGISTRO MIGRADO SOBRESCRITO')
    puts TypeProcess.find(6347).update(reason_inv: 'AUSENCIA DE ANIMO CONCILIATORIO',state: 'REGISTRO MIGRADO SOBRESCRITO')
    puts TypeProcess.find(6381).update(reason_inv: 'LAS PARTES NO CUENTAN CON ANIMO CONCILIATORIO',state: 'REGISTRO MIGRADO SOBRESCRITO')
    puts TypeProcess.find(6406).update(reason_inv: 'EN EL PROCESO NOS OCUPA SE PUEDE DETERMINAR CLARAMENTE QUE EL ACCIDENTE SE PRODUJO POR CULPA DE LA CONDUCTORA',state: 'REGISTRO MIGRADO SOBRESCRITO')
    puts TypeProcess.find(6431).update(reason_inv: 'SE ENCUENTRA PENDIENTE LA ETAPA CONCILIATORIA',state: 'REGISTRO MIGRADO SOBRESCRITO')
    puts TypeProcess.find(6449).update(reason_inv: 'NO ES CLARA LA REPONSABILIDAD DEL ASEGURADO ATENDIENDO A QUE PODEMOS ESTAR INMERSOS ANTE UNA CAUSAL EXIMIENTE DE RESPONSABILIDAD DENOMINADA  FUERZA MAYOR O CASO FORTUITO DEBIDO A QUE LA CONFLAGRACION FUE A CAUSA DE UN FENOMENO NATURAL',state: 'REGISTRO MIGRADO SOBRESCRITO')
    puts TypeProcess.find(6460).update(reason_inv: 'INEXISTENCIA DE ANIMO CONCILIATORIO',state: 'REGISTRO MIGRADO SOBRESCRITO')
    puts TypeProcess.find(6501).update(reason_inv: 'LA PARTE ACTORA NO ACEPTO LA PROPUESTA CONCILIATORIA DE LAS ASEGURADORAS ',state: 'REGISTRO MIGRADO SOBRESCRITO')
    puts TypeProcess.find(6513).update(reason_inv: 'LAS DEMANDADAS NO TIENEN ANIMO CONCILIATORIO',state: 'REGISTRO MIGRADO SOBRESCRITO')
    puts TypeProcess.find(6515).update(reason_inv: 'NO SE HA ADELANTADO LA ETAPA CONCILIATORIA EN ESTE PROCESO',state: 'REGISTRO MIGRADO SOBRESCRITO')
    puts TypeProcess.find(6525).update(reason_inv: 'SE SUGIERE ESPERAR EL DEBATE PROBATORIO',state: 'REGISTRO MIGRADO SOBRESCRITO')
    puts TypeProcess.find(6527).update(reason_inv: 'VINCUNLACION POR POLIZAS CON FALTA DE COBERTURA ',state: 'REGISTRO MIGRADO SOBRESCRITO')
    puts TypeProcess.find(6562).update(reason_inv: 'EL ASEGURADO NO PRESENTA ANIMO CONCILIATORIO',state: 'REGISTRO MIGRADO SOBRESCRITO')
    puts TypeProcess.find(6563).update(reason_inv: 'SE SUGIERE ESPERAR EL DESARROLLO DEL DEBATE PROBATORIO',state: 'REGISTRO MIGRADO SOBRESCRITO')
    puts TypeProcess.find(6575).update(reason_inv: 'VINCULACION POR POLIZA CON FALTA DE COBERTURA',state: 'REGISTRO MIGRADO SOBRESCRITO')
    puts TypeProcess.find(6618).update(reason_inv: 'SE RECOMIENDA ESPERAR EL DESARROLLO DEL DEBATE PROBATORIO ',state: 'REGISTRO MIGRADO SOBRESCRITO')
    puts TypeProcess.find(6713).update(reason_inv: 'TENIENDO EN CUENTA QUE UNA VEZ VERIFICADOS LOS HECHOS  SE RECOMENDA ESPERAR EL RESULTADO DE LAS PRUEBAS',state: 'REGISTRO MIGRADO SOBRESCRITO')
    puts TypeProcess.find(6717).update(reason_inv: 'SE SUGIERE ESPERAR EL DEBATE PROBATORIO',state: 'REGISTRO MIGRADO SOBRESCRITO')
    puts TypeProcess.find(6731).update(reason_inv: 'ESPERAR EL FALLO EN SEGUNDA INSTANCIA',state: 'REGISTRO MIGRADO SOBRESCRITO')
    puts TypeProcess.find(6738).update(reason_inv: 'PARA LA PROXIMA AUDIENCIA SE INICIA CON ETAPA PROBATORIA HAY QUE ESPERAR TESTIMONIO DE EMCALI PARA QUE INFORME SOBRE LAS INSTALACIONES DE REDES ELECTRICAS Y COMO TAMBIEN LOS INTERROGATORIOS DE LOS DEMANDANTES',state: 'REGISTRO MIGRADO SOBRESCRITO')
    puts TypeProcess.find(6749).update(reason_inv: 'EL MATERIAL PROBATORIO CON EL QUE PRETENDE IMPUTARLE RESPONSABILIDAD A LA ENTIDAD DEMANDADA CARGA QUE POR CIENTO ESTABA DE LA PARTE ACTORA QUIEN NI SIQUIERA HIZO EL MINIMO ESFUERZO POR ACREDITAR LOS ELEMENTOS QUE ESTRUCTURAN LA RESPONSABILIDAD DEL ESTADO',state: 'REGISTRO MIGRADO SOBRESCRITO')
    puts TypeProcess.find(6755).update(reason_inv: 'VINCULACION POR POLIZA DE RESPONSABILIDAD CIVIL DE SERVIDORES PUBLICOS CON FALTA DE COBERTURA',state: 'REGISTRO MIGRADO SOBRESCRITO')
    puts TypeProcess.find(6776).update(reason_inv: 'NO EXISTE ELEMENTO PROBATORIO O CIENTIFICO QUE ACREDITE MALA PRAXIS POR PARTE DEL ASEGURADO CLINICA CENTRAL OHL ',state: 'REGISTRO MIGRADO SOBRESCRITO')
    puts TypeProcess.find(6779).update(reason_inv: 'SE SUGIERE ESPERAR EL FALLO DE PRIMERA INSTANCIA',state: 'REGISTRO MIGRADO SOBRESCRITO')
    puts TypeProcess.find(6807).update(reason_inv: 'TERMINADO POR DESISTIMIENTO DE LAS PRETENSIONES',state: 'REGISTRO MIGRADO SOBRESCRITO')
    puts TypeProcess.find(6810).update(reason_inv: 'SE SUGIERE ESPERAR EL DEBATE PROBATORIO',state: 'REGISTRO MIGRADO SOBRESCRITO')
    puts TypeProcess.find(6892).update(reason_inv: 'SE SUGIERE ESPERAR EL DESARROLLO DEL DEBATE PROBATORIO',state: 'REGISTRO MIGRADO SOBRESCRITO')
    puts TypeProcess.find(6924).update(reason_inv: 'SE SUGIERE ESPERAR EL DESARROLLO DEL DEBATE PROBATORIO',state: 'REGISTRO MIGRADO SOBRESCRITO')
    puts TypeProcess.find(6948).update(reason_inv: 'SE SUGIERE EL DESARROLLO DEL DEBATE PROBATORIO  ',state: 'REGISTRO MIGRADO SOBRESCRITO')
    puts TypeProcess.find(7077).update(reason_inv: 'SE SUGIERE ESPERAR EL DEBATE PROBATORIO ',state: 'REGISTRO MIGRADO SOBRESCRITO')
    puts TypeProcess.find(7078).update(reason_inv: 'PARA LA PRXIMA AUDEINCIA DEBEMOS ESPERAR EL DEBATE PROBATORIO',state: 'REGISTRO MIGRADO SOBRESCRITO')
    puts TypeProcess.find(7117).update(reason_inv: 'SE SUGIERE ESPERAR EL DESARROLLO DEL DEBATE PROBATORIO',state: 'REGISTRO MIGRADO SOBRESCRITO')
    puts TypeProcess.find(7270).update(reason_inv: 'SE SUGIERE ESPERAR EL DEBATE PROBATORIO',state: 'REGISTRO MIGRADO SOBRESCRITO')
    puts TypeProcess.find(7372).update(reason_inv: 'INDIQUEN RESPONSABILIDAD DE NUESTRO ASEGURADO FRENTE  A LOS HECHOS OBJETO DE CONTROVERSIA',state: 'REGISTRO MIGRADO SOBRESCRITO')
    puts TypeProcess.find(7461).update(reason_inv: 'EL PROCESO SE ENCUENTRA PENDIENTE A FIJACION DE FECHA Y HORA PARA AUDIENCIA DE CONCILIACION JUDICIAL',state: 'REGISTRO MIGRADO SOBRESCRITO')
    puts TypeProcess.find(7508).update(reason_inv: 'SE SUGIERE ESPERAR EL DESARROLLO DEL DEBATE PROBATORIO',state: 'REGISTRO MIGRADO SOBRESCRITO')
    puts TypeProcess.find(7567).update(reason_inv: 'SE SUGIERE ESPERAR EL DESARROLLO DEL DEBATE PROBATORIO',state: 'REGISTRO MIGRADO SOBRESCRITO')
    puts TypeProcess.find(7612).update(reason_inv: 'YA QUE EL PROCESO SE ENCUENTRA PENDIENTE QUE SE FIJE FECHA PARA AUDIENCIA DE CONCILIACION JUDICIAL',state: 'REGISTRO MIGRADO SOBRESCRITO')
    puts TypeProcess.find(7699).update(reason_inv: 'PENDIENTE QUE SE FIJE FECHA PARA AUDIENCIA DE CONCILIACION JUDICIAL',state: 'REGISTRO MIGRADO SOBRESCRITO')
    puts TypeProcess.find(7720).update(reason_inv: 'SE SUGIERE ESPERAR EL DESARROLLO DEL DEBATE PROBATORIO',state: 'REGISTRO MIGRADO SOBRESCRITO')
    puts TypeProcess.find(7738).update(reason_inv: 'ESPERAR EL AVANCE DEL PROCESO',state: 'REGISTRO MIGRADO SOBRESCRITO')
    puts TypeProcess.find(7795).update(reason_inv: 'SE SUGIERE ESPERAR EL FALLO DE PRIMERA INSTANCIA',state: 'REGISTRO MIGRADO SOBRESCRITO')
    puts TypeProcess.find(7884).update(reason_inv: 'HUBO ANIMO CONCILIATORIO ENTRE LAS PARTES ',state: 'REGISTRO MIGRADO SOBRESCRITO')
    puts TypeProcess.find(7912).update(reason_inv: 'INCUMPLIMIENTO DE GARANTIAS',state: 'REGISTRO MIGRADO SOBRESCRITO')
    puts TypeProcess.find(7927).update(reason_inv: 'SE SUGIERE ESPERAR EL DESARROLLO DEL DEBATE PROBATORIO ',state: 'REGISTRO MIGRADO SOBRESCRITO')
    puts TypeProcess.find(7955).update(reason_inv: 'PROCESO TERMINADO',state: 'REGISTRO MIGRADO SOBRESCRITO')
    puts TypeProcess.find(8223).update(reason_inv: 'ES NECESARIO ESPERAR AL DESAROLLO DE LA ETAPA PROBATORIA',state: 'REGISTRO MIGRADO SOBRESCRITO')
    puts TypeProcess.find(8233).update(reason_inv: 'POLIZA SIN COBERTURA',state: 'REGISTRO MIGRADO SOBRESCRITO')
    puts TypeProcess.find(8247).update(reason_inv: 'ES NECESARIO ESPERAR A LA ETAPA INICIAL PARA ANALIZAR QUE PRUEBAS SE DECRETARAN Y PRACTICARAN',state: 'REGISTRO MIGRADO SOBRESCRITO')
    puts TypeProcess.find(8312).update(reason_inv: 'NO EXISTE RESPALDO PROBATORIO NI CIENTIFICO QUE DEMUESTRE MALA PRAXIS POR PARTE DE LA ENTIDAD ASEGURADA',state: 'REGISTRO MIGRADO SOBRESCRITO')
    puts TypeProcess.find(8376).update(reason_inv: 'SE SUGIERE ESPERAR EL DESARROLLO DEL DEBATE PROBATORIO ',state: 'REGISTRO MIGRADO SOBRESCRITO')
    puts TypeProcess.find(8394).update(reason_inv: 'SE SUGIERE ESPERAR EL DESARROLLO DEL DEBATE PROBATORIO',state: 'REGISTRO MIGRADO SOBRESCRITO')
    puts TypeProcess.find(8396).update(reason_inv: 'SE SUGIERE ESPERAR EL DESARROLLO DEL DEBATE PROBATORIO',state: 'REGISTRO MIGRADO SOBRESCRITO')
    puts TypeProcess.find(8399).update(reason_inv: 'SE SUGIERE ESPERAR EL DESARROLLO DEL DEBATE PROBATORIO',state: 'REGISTRO MIGRADO SOBRESCRITO')
    puts TypeProcess.find(8400).update(reason_inv: 'PENDIENTE QUE SE FIJE FECHA PARA CONCILIACION JUDICIAL',state: 'REGISTRO MIGRADO SOBRESCRITO')
    puts TypeProcess.find(8546).update(reason_inv: 'POLIZA SIN COBERTURA',state: 'REGISTRO MIGRADO SOBRESCRITO')
    puts TypeProcess.find(8590).update(reason_inv: 'SE SUGIERE ESPERARA EL DESARROLLO DEL DEBATE PROBATORIO',state: 'REGISTRO MIGRADO SOBRESCRITO')
    puts TypeProcess.find(8598).update(reason_inv: 'ESPERAR EL DEBATE PROBATORIO',state: 'REGISTRO MIGRADO SOBRESCRITO')
    puts TypeProcess.find(8612).update(reason_inv: 'SE SUGIERE ESPERAR EL DESARROLLO DEL DEBATE PROBATORIO',state: 'REGISTRO MIGRADO SOBRESCRITO')
    puts TypeProcess.find(8629).update(reason_inv: 'ESPERAR EL DESARROLLO DEL DEBATE PROBATORIO',state: 'REGISTRO MIGRADO SOBRESCRITO')
    puts TypeProcess.find(8659).update(reason_inv: 'AUSENCIA DE COBERTURA DEL CONTRATO DE SEGURO',state: 'REGISTRO MIGRADO SOBRESCRITO')
    puts TypeProcess.find(8685).update(reason_inv: 'EXCLUSION DE COBERTURA PARA RECLUSOS',state: 'REGISTRO MIGRADO SOBRESCRITO')
    puts TypeProcess.find(8718).update(reason_inv: 'POR CUANTO LA VICTIMA DEL ACCIDENTE COMETIO FALTA DE TRANSITO INVADIENDO CARRIL CONTRARIO Y PROVOCANDO EL ACCIDENTE EN CUESTION ',state: 'REGISTRO MIGRADO SOBRESCRITO')
    puts TypeProcess.find(8732).update(reason_inv: 'DEL ANALISIS DEL ACERVO PROBATORIO NO SE EVIDENCIA UNA FALLA EN EL SERVICIO',state: 'REGISTRO MIGRADO SOBRESCRITO')
    puts TypeProcess.find(8750).update(reason_inv: 'NO ACEPTACION DE LA PARTE DEMANDANTE',state: 'REGISTRO MIGRADO SOBRESCRITO')
    puts TypeProcess.find(8793).update(reason_inv: 'POR RADICAR ESCRITO DE LLAMAMIENTO FUERA DEL TERMINO DE TRASLADO SE DEJO SIN EFECTOS AUTO QUE ADMITE LLAMAMIENTO A PREVISORA TERMINANDO PROCESO PARA LA ASEGURADORA',state: 'REGISTRO MIGRADO SOBRESCRITO')
    puts TypeProcess.find(8861).update(reason_inv: 'SE SUGIERE ESPERAR EL DEBATE PROBATORIO',state: 'REGISTRO MIGRADO SOBRESCRITO')
    puts TypeProcess.find(8904).update(reason_inv: 'ESPERAR EL FALLO DE PRIMERA INSTANCIA',state: 'REGISTRO MIGRADO SOBRESCRITO')
    puts TypeProcess.find(8977).update(reason_inv: 'NO EXISTE RESPALDO PROBATORIO O CIENTIFICO QUE ACREDITE QUE SE COMETIO UNA MALA PRAXIS POR PARTE DE LA ENTIDAD ASEGURADA',state: 'REGISTRO MIGRADO SOBRESCRITO')
    puts TypeProcess.find(9009).update(reason_inv: 'NO CONCILIAR POR CUANTO EL RECLUSO SE ENCONTRABA EN MEDIDA DOMICILIARIA  Y NO EXISTE PRUEBA DE CONOCIMIENTO DE LAS AUTORIDADES DE AMENAZA ALGUNA',state: 'REGISTRO MIGRADO SOBRESCRITO')
    puts TypeProcess.find(9011).update(reason_inv: 'SE SUGIERE ESPERAR EL DEBATE PROBATORIO',state: 'REGISTRO MIGRADO SOBRESCRITO')
    puts TypeProcess.find(9037).update(reason_inv: 'SE RECOMIENDA EL FALLO DE PRIMERA INSTANCIA',state: 'REGISTRO MIGRADO SOBRESCRITO')
    puts TypeProcess.find(9184).update(reason_inv: 'POR NO ESTAR PLENAMENTE DEMOSTRADOS LOS HECHOS DE LA DEMANDA',state: 'REGISTRO MIGRADO SOBRESCRITO')
    puts TypeProcess.find(9220).update(reason_inv: 'PROCESO TERMINADO',state: 'REGISTRO MIGRADO SOBRESCRITO')
    puts TypeProcess.find(9280).update(reason_inv: 'LA ENTIDAD ASEGURADA MANIFIESTA SER NO RESPONSABLE DEL SINIESTRO',state: 'REGISTRO MIGRADO SOBRESCRITO')
    puts TypeProcess.find(9283).update(reason_inv: 'ESTE GPJ DEBE RELACIONARSE CON EL GPJ 6488-2016',state: 'REGISTRO MIGRADO SOBRESCRITO')
    puts TypeProcess.find(9286).update(reason_inv: 'SE SUGIERE ESPERAR EL DESARROLLO DEL PROCESO',state: 'REGISTRO MIGRADO SOBRESCRITO')
    puts TypeProcess.find(9298).update(reason_inv: 'SE SUGIERE  EL DEBATE PROBATORIO',state: 'REGISTRO MIGRADO SOBRESCRITO')
    puts TypeProcess.find(9427).update(reason_inv: 'NO SE ACREDITO POR LA PARTE ACCIONANTE  CON RESPALDO PROBATORIO O CIENTIFICO QUE LA ENTIDAD ASEGURADA HAYA INCURRIDO EN MALA PRAXIS',state: 'REGISTRO MIGRADO SOBRESCRITO')
    puts TypeProcess.find(9430).update(reason_inv: 'AGOTAR LAS PRUEBAS PARA LOGRAR DESVIRTUAR RESPONSABILIDAD DEL ENTE DEMANDADO',state: 'REGISTRO MIGRADO SOBRESCRITO')
    puts TypeProcess.find(9451).update(reason_inv: 'ESPERAR EL DESARROLLO DEL DEBATE PROBATORIO',state: 'REGISTRO MIGRADO SOBRESCRITO')
    puts TypeProcess.find(9465).update(reason_inv: 'PENDIENTE EL FALLO EN SEGUNDA INSTANCIA ',state: 'REGISTRO MIGRADO SOBRESCRITO')
    puts TypeProcess.find(9571).update(reason_inv: 'SE RECOMIENDA ESPERAR EL DESARROLLO DEL DEBATE PROBATORIO',state: 'REGISTRO MIGRADO SOBRESCRITO')
    puts TypeProcess.find(9601).update(reason_inv: 'SENTENCIA FAVORABLE',state: 'REGISTRO MIGRADO SOBRESCRITO')
    puts TypeProcess.find(9709).update(reason_inv: 'SENTENCIA DE PRIMERA INSTANCIA FAVORABLE',state: 'REGISTRO MIGRADO SOBRESCRITO')
    puts TypeProcess.find(9763).update(reason_inv: 'NO EXISTE RESPALDO PROBATORIO NI CIENTIFICO QUE DEMUESTRE MALA PRAXIS POR PARTE DE LA ENTIDAD ASEGURADA',state: 'REGISTRO MIGRADO SOBRESCRITO')
    puts TypeProcess.find(9900).update(reason_inv: 'NO EXISTE RESPALDO PROBATORIO NI CIENTIFICO QUE DEMUESTRE MALA PRAXIS POR PARTE DE LA ENTIDAD ASEGURADA',state: 'REGISTRO MIGRADO SOBRESCRITO')
    puts TypeProcess.find(9904).update(reason_inv: 'NO HAY RESPONSABILIDAD EVIDENTE',state: 'REGISTRO MIGRADO SOBRESCRITO')
    puts TypeProcess.find(9934).update(reason_inv: 'POR CUANTO LOS RECLUSOS O BACHILLERES NO SE CONSIDERAN TERCEROS PARA LA POLIZA ENTIENDASE POR RECLUSOS TANTO A PERSONAS DETENIDAS PROCESADAS Y CONDENADAS',state: 'REGISTRO MIGRADO SOBRESCRITO')
    puts TypeProcess.find(9936).update(reason_inv: 'FALLO FAVORABLE EN PRIMERA INSTANCIA Y EN SEGUNDA INSTANCIA',state: 'REGISTRO MIGRADO SOBRESCRITO')
    puts TypeProcess.find(9943).update(reason_inv: 'NO HAY NEXO CAUSAL',state: 'REGISTRO MIGRADO SOBRESCRITO')
    puts TypeProcess.find(9947).update(reason_inv: 'HECHO DE UN TERCERO DEMOSTRADO',state: 'REGISTRO MIGRADO SOBRESCRITO')
    puts TypeProcess.find(9948).update(reason_inv: 'SENTENCIA DE PRIMERA INSTANCIA FAVORABLE',state: 'REGISTRO MIGRADO SOBRESCRITO')
    puts TypeProcess.find(9951).update(reason_inv: 'ESPERAR EL FALLO DE SENTENCIA EN PRIMERA INSTANCIA',state: 'REGISTRO MIGRADO SOBRESCRITO')
    puts TypeProcess.find(9955).update(reason_inv: 'SENTENCIA DE PRIMERA INSTANCIA FAVORABLE',state: 'REGISTRO MIGRADO SOBRESCRITO')
    puts TypeProcess.find(9972).update(reason_inv: 'PROCESO TERMINADO',state: 'REGISTRO MIGRADO SOBRESCRITO')
    puts TypeProcess.find(9978).update(reason_inv: 'ESPERAR EL FALLO EN SEGUNDA INSTANCIA',state: 'REGISTRO MIGRADO SOBRESCRITO')
    puts TypeProcess.find(9990).update(reason_inv: 'SIN PRUEBAS',state: 'REGISTRO MIGRADO SOBRESCRITO')
    puts TypeProcess.find(10004).update(reason_inv: 'POR HABER UN GRADO DE RESPONSABILIDAD DEL ENTE DEMANDADO',state: 'REGISTRO MIGRADO SOBRESCRITO')
    puts TypeProcess.find(10017).update(reason_inv: 'DICTAMEN PERICIAL FAVORABLE',state: 'REGISTRO MIGRADO SOBRESCRITO')
    puts TypeProcess.find(10024).update(reason_inv: 'SE TERMINO',state: 'REGISTRO MIGRADO SOBRESCRITO')
    puts TypeProcess.find(10054).update(reason_inv: 'POLIZA SOAT',state: 'REGISTRO MIGRADO SOBRESCRITO')
    puts TypeProcess.find(10056).update(reason_inv: 'POR SER POLIZA SOAT',state: 'REGISTRO MIGRADO SOBRESCRITO')
    puts TypeProcess.find(10069).update(reason_inv: 'PRUEBAS FAVORABLES AL ASEGURADO',state: 'REGISTRO MIGRADO SOBRESCRITO')
    puts TypeProcess.find(19118).update(reason_inv: 'AUN NO SE HA FIJADO FECHA PARA CONCILIACION JUDICIAL',state: 'REGISTRO MIGRADO SOBRESCRITO')
    puts TypeProcess.find(19119).update(reason_inv: 'PENDIENTE QUE SE FIJE FECHA PARA LA CONCILIACION JUDICIAL',state: 'REGISTRO MIGRADO SOBRESCRITO')
    puts TypeProcess.find(19148).update(reason_inv: 'NO ESTA DEMOSTRADO EL NEXO  CAUSAL',state: 'REGISTRO MIGRADO SOBRESCRITO')
    puts TypeProcess.find(20097).update(reason_inv: 'NO EXISTE PRUEBA SUFICIENTE PARA ACREDITAR QUE SE PRESENTO UNA FALLA DEL SERVICIO DE SALUD',state: 'REGISTRO MIGRADO SOBRESCRITO')
    puts TypeProcess.find(20099).update(reason_inv: 'NO SE ACREDITO DE FORMA PROBATORIA O CIENTIFICA QUE EXISTIO MALA PRAXIS POR PARTE DE LA ENTIDAD ASEGURADA',state: 'REGISTRO MIGRADO SOBRESCRITO')
    puts TypeProcess.find(20100).update(reason_inv: 'NO EXISTE RESPALDO PROBATORIO O CIENTIFICO QUE ACREDITE UNA MALA PRAXIS POR PARTE DE LA ENTIDAD ASEGURADA',state: 'REGISTRO MIGRADO SOBRESCRITO')
    puts TypeProcess.find(20163).update(reason_inv: 'SENTENCIA DESFAVORABLE',state: 'REGISTRO MIGRADO SOBRESCRITO')
  end
end
