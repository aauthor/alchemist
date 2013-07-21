module Alchemist
  module Conversion
    def method_missing unit_name, *args, &block
      exponent, unit_name = Alchemist.parse_prefix(unit_name)
      if Alchemist.has_measurement?(unit_name)
        Alchemist.measurement self, unit_name, exponent
      else
        super( unit_name, *args, &block )
      end
    end
  end
end

class Numeric
  include Alchemist::Conversion
end
