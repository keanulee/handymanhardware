module TransactionsHelper
  def datetimepicker(f, field)
    if @transaction[field]
      f.text_field field, value: l(@transaction[field]), class: 'dtpicker form-control'
    else
      f.text_field field, class: 'dtpicker form-control'
    end
  end

  def datetimetext(dt)
    dt ? l(dt) : '-'
  end

  def booleantext(b)
    b ? 'Yes' : '-'
  end
end
