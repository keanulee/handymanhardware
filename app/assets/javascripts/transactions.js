var TransactionForm = {

    getHourlyRate: function() {
        var hourlyRate = 0;
        $('input[type=checkbox][data-hourly-rate]').each(function(i, checkbox) {
            if (checkbox.checked) {
                hourlyRate += parseFloat($(checkbox).data('hourly-rate'));
            }
        });
        return hourlyRate;
    },

    calculateEstimatedSubtotal: function() {
        var startAt = Date.parse($('input#transaction_start_at').val());
        var endAt = Date.parse($('input#transaction_end_at').val());
        var hours = 0;
        if (startAt && endAt) {
            hours = Math.max(0, (endAt - startAt) / (60 * 60 * 1000));
        }
        $('span.estimated-hours').text(hours);

        var hourlyRate = TransactionForm.getHourlyRate();
        $('span.hourly-rate').text(hourlyRate.toFixed(2));

        var estimatedSubtotal = (hours * hourlyRate).toFixed(2);
        $('span.estimated-subtotal').text(estimatedSubtotal);
    },

    calculateSubtotal: function() {
        var hours = parseFloat($('input#transaction_hours_charged').val());
        if (typeof hours !== 'number' || isNaN(hours)) hours = 0;

        var subtotal = (hours * TransactionForm.getHourlyRate()).toFixed(2);
        $('span.subtotal').text(subtotal);
    },

    calculateHoursCharged: function() {
        var deliveredAt = Date.parse($('input#transaction_delivered_at').val());
        var returnedAt = Date.parse($('input#transaction_returned_at').val());

        if (deliveredAt && returnedAt) {
            var hoursCharged = Math.max(0, (returnedAt - deliveredAt) / (60 * 60 * 1000));
            $('input#transaction_hours_charged').val(hoursCharged);
            TransactionForm.calculateSubtotal();
        }
    },

    init: function() {
        $('.dtpicker').datetimepicker({
            format:'M dd, yyyy HH:ii P',
            showMeridian: true,
            autoclose: 'true'
        });

        var estimatedSubtotalSelectors = [
            'input[type=checkbox][data-hourly-rate]',
            'input#transaction_start_at',
            'input#transaction_end_at'
        ];
        $(estimatedSubtotalSelectors.join(',')).change(TransactionForm.calculateEstimatedSubtotal);
        TransactionForm.calculateEstimatedSubtotal();

        var subtotalSelectors = [
            'input[type=checkbox][data-hourly-rate]',
            'input#transaction_hours_charged'
        ];
        $(subtotalSelectors.join(',')).change(TransactionForm.calculateSubtotal);
        TransactionForm.calculateSubtotal();

        var hoursChargedSelectors = [
            'input#transaction_delivered_at',
            'input#transaction_returned_at'
        ]
        $(hoursChargedSelectors.join(',')).change(TransactionForm.calculateHoursCharged);
    }
};

$(document).ready(TransactionForm.init);
$(document).on('page:load', TransactionForm.init);
