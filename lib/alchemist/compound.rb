# TODO: remove all of this
Alchemist.register_operation_conversions(:distance, :distance, :*, :square_meters)
Alchemist.register_operation_conversions(:area, :distance, :*, :cubic_meters)
Alchemist.register_operation_conversions(:distance, :area, :*, :cubic_meters)
Alchemist.register_operation_conversions(:area, :distance, :/, :meters)
Alchemist.register_operation_conversions(:volume, :distance, :/, :square_meters)
Alchemist.register_operation_conversions(:volume, :area, :/, :meters)
