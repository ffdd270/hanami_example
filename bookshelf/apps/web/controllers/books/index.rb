module Web
  module Controllers
    module Books
      class Index
        include Web::Action

        expose :books # 심볼로 넣어주기..

        def call(params)
          @books = BookRepository.new.all # 예가 Book.
        end
      end
    end
  end
end
