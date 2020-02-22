module Web
  module Controllers
    module Movies
      class Index
        include Web::Action
        accept :json

        expose :movies

        def call(params)
          @movies = MovieRepository.new.index
        end
      end
    end
  end
end
