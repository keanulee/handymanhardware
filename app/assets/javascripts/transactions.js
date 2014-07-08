function initDatetimepickers() {
    $('.dtpicker').datetimepicker({
        format:'yyyy-mm-dd HH:ii P',
        showMeridian: true,
        autoclose: 'true'
    });
}

$(document).ready(initDatetimepickers);
$(document).on('page:load', initDatetimepickers);
