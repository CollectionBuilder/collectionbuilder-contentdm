# use like {{ myarray | dates_to_uniq_years }}
# where myarray is a liquid array containing dates
# returns an array of the unique years
# evan will 2019 for CollectionBuilder project
require 'date'

module Jekyll
  module DatesToUniqYears
    def dates_to_uniq_years(input)
      clean = input.collect { |x| Date.parse(x).year }
      clean.uniq
    end
  end
end

Liquid::Template.register_filter(Jekyll::DatesToUniqYears)