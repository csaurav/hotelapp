module ApplicationHelper
    def customer_full_name(customer)
        "#{customer.first_name} #{customer.last_name}"
    end
end
