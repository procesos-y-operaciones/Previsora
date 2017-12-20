# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$(document).ready ->
    
    #regla -> número de radicado de correspondencia? 
    stateRule = ->
        x = document.getElementById('state').value
        if x == 'Si'
            document.getElementById('correspondency_radicate').readOnly = false
            $('#correspondency_radicate').val=''
        else
            document.getElementById('correspondency_radicate').readOnly = true
            $('#correspondency_radicate').val='Pendiente'
        return
    $('#state').ready ->
        stateRule()
        return
    $('#state').change ->
        stateRule()
        return
        
    #regla -> tiene número de radicado de coactivo?
    coactiveRule = ->
        x = document.getElementById('coactive').value
        if x == 'Si'
            document.getElementById('coactive_radicate').readOnly = false
            document.getElementById('coactive_value_cents').readOnly = false
            $('#coactive_radicate').val=''
            $('#coactive_value_cents').val=0
        else
            document.getElementById('coactive_radicate').readOnly = true
            document.getElementById('coactive_value_cents').readOnly = true
            $('#coactive_radicate').val='Pendiente'
            $('#coactive_value_cents').val=-1
        return
    $('#coactive').ready ->
        coactiveRule()
        return
    $('#coactive').change ->
        coactiveRule()
        return
        
    #regla -> fuente de litigio
    morePoliciesRule = ->
        x = document.getElementById('more_policies').value
        if x == 'Si'
            document.getElementById('policies').readOnly = false
            document.getElementById('sinisters').readOnly = false
            $('#policies').val=''
            $('#sinisters').val=''
        else
            document.getElementById('policies').readOnly = true
            document.getElementById('sinisters').readOnly = true
            $('#policies').val='NO APLICA'
            $('#sinisters').val='NO APLICA'
        return
    $('#more_policies').ready ->
        morePoliciesRule()
        return
    $('#more_policies').change ->
        morePoliciesRule()
        return
    
    #regla -> numero de siniestro
    num = 0
    exer = 0
    poly = 0
    comm = 0
    numSiniestro = ''
    $('#number').change ->
        num = numSiniestro.concat(document.getElementById('number').value)
        $('#sinister').val num + '-' + exer + '-' + poly + '-' + comm
        return
    $('#exercise').change ->
        exer = numSiniestro.concat(document.getElementById('exercise').value)
        $('#sinister').val num + '-' + exer + '-' + poly + '-' + comm
        return
    $('#branch_policy').change ->
        poly = numSiniestro.concat(document.getElementById('branch_policy').value)
        $('#sinister').val num + '-' + exer + '-' + poly + '-' + comm
        return
    $('#branch_commercial').change ->
        comm = numSiniestro.concat(document.getElementById('branch_commercial').value)
        $('#sinister').val num + '-' + exer + '-' + poly + '-' + comm
        return
        
    #regla -> fuente de litigio
    litigationSourceRule = ->
        if litsrc == '2'
            alert litsrc
            document.getElementById('policyCents').readOnly = false
            $('#protection').prop('disabled', false)
        else
            document.getElementById('policyCents').readOnly = true
            $('#protection').prop('disabled', true)
        return
    $('#litigationSource').ready ->
        litigationSourceRule()
        return
    $('#litigationSource').change ->
        litigationSourceRule()
        return
    
    #regla -> Valor pretensión / detrimento / estimación
    contingencyValueCentsRule = ->
        detValCents = document.getElementById('detrimetValueCents').value
        ensValCents = document.getElementById('ensuranceValueCents').value
        if detValCents != 0 and ensValCents != 0
            if detValCents < ensValCents
                $('#contingencyValueCents').val detValCents
            else
                $('#contingencyValueCents').val ensValCents
        return
    $('#detrimetValueCents').ready ->
        contingencyValueCentsRule()
        return
    $('#ensuranceValueCents').ready ->
        contingencyValueCentsRule()
        return
    $('#detrimetValueCents').change ->
        contingencyValueCentsRule()
        return
    $('#ensuranceValueCents').change ->
        contingencyValueCentsRule()
        return
    
    #regla -> Subclase de proceso
    subprocessClassRule = ->
        subClass = document.getElementById('subprocessClass').value
        if subClass == '3'
            $('#currentStageVer').prop 'disabled', false
            $('#currentStageOrd').prop 'disabled', true
            $('#currentStageVer').show()
            $('#currentStageOrd').hide()
        if subClass == '4'
            $('#currentStageVer').prop 'disabled', true
            $('#currentStageOrd').prop 'disabled', false
            $('#currentStage').show()
            $('#currentStageVer').hide()
            $('#currentStageOrd').show()
            return
    $('#subprocessClass').ready ->
        subprocessClassRule()
        return
    $('#subprocessClass').change ->
        subprocessClassRule()
        return
    
    #regla -> Tipo moneda
    moneyTypeRule = ->
        money_type = document.getElementById('moneyType').value
        if money_type == '1'
            document.getElementById('dolarValueCents').readOnly = true
            $('#dolarValueCents').val=0
        else
            document.getElementById('dolarValueCents').readOnly = false
            $('#dolarValueCents').val=' ' 
        return
        $('#moneyType').ready ->
            moneyTypeRule()
            return
        $('#moneyType').change ->
            moneyTypeRule()
            return


    #regla -> estado del caso
    caseStateRule = ->
        case_state = document.getElementById('caseState').value
        if case_state == '3'
            $('#caseTermination').prop('disabled', false)
            $('#lastPerformance').prop('disabled', false)
            document.getElementById('lastPerformanceDate').readOnly = false
            $('#reservedReleased').prop('disabled', false)
        else
            $('#caseTermination').prop('disabled', true)
            $('#lastPerformance').prop('disabled', true)
            document.getElementById('lastPerformanceDate').readOnly = true
            $('#reservedReleased').prop('disabled', true)
        return
    $('#caseState').ready ->
        caseStateRule()
        return
    $('#caseState').change ->
        caseStateRule()
        return
    return