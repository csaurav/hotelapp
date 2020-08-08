module ApplicationHelper
    # helper method for showing customer full name in the application
    def customer_full_name(customer)
        "#{customer.first_name} #{customer.last_name}"
    end
end
