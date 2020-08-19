module ConstructionsHelper
    def converting_to_jpy(price)
      unless price == nil
        price.to_s(:delimited)
      else
        price
      end
    end

    def converting_to_month(date)
      date.year.to_s + date.month.to_s     
    end
end
