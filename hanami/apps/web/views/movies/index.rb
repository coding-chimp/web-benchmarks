module Web
  module Views
    module Movies
      class Index
        include Web::View
        layout false

        def render
          _raw JSON.dump(movies.map { |movie| movie.to_h })
        end
      end
    end
  end
end
