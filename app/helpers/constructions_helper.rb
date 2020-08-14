module ConstructionsHelper
    def converting_to_jpy(price)
      unless price == nil
        price.to_s(:delimited)
      else
        price
      end
    end
end
