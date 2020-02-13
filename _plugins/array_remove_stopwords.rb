# use like {{ myarray | array_remove_stopwords: stopwordsArray }}
# where myarray and stopwordsArray are liquid arrays
# returns a new array with the any of the original value that matched the stopwords list removed
# evan will 2020 for CollectionBuilder project
module Jekyll
    module ArrayRemoveStopwords
      def array_remove_stopwords(input, stopwords)
        clean = input.compact.reject(&:empty?).collect(&:strip)
        clean.uniq.map { |x| [x, clean.count(x)] }.sort_by {|k, v| -v}.to_h
      end
    end
  end
    
  Liquid::Template.register_filter(Jekyll::ArrayRemoveStopwords)