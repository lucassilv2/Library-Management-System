Rails.application.routes.draw do

  get 'authors/list' => 'authors#list'
  get 'authors/get/:id' => 'authors#get'
  get 'authors/get_books/:id' => 'authors#get_books'
  post 'authors/create' => 'authors#create'
  post 'authors/associate_book/:id/:book_id' => 'authors#associate_book'
  put 'authors/update/:id' => 'authors#update'
  delete 'authors/disassociate_book/:id/:book_id' => 'authors#disassociate_book'
  delete 'authors/destroy/:id' => 'authors#destroy'

  get 'books/list' => 'books#list'
  get 'books/get/:id' => 'books#get'
  get 'books/get_loans/:id' => 'books#get_loans'
  get 'books/get_authors/:id' => 'books#get_authors'
  post 'books/create' => 'books#create'
  post 'books/associate_author/:id/:author_id' => 'books#associate_author'
  put 'books/update/:id' => 'books#update'
  delete 'books/destroy/:id' => 'books#destroy'

  get 'customers/list' => 'customers#list'
  get 'customers/get/:id' => 'customers#get'
  post 'customers/create' => 'customers#create'

  get 'loans/list' => 'loans#list'
  get 'loans/get/:id' => 'loans#get'
  get 'loans/late' => 'loans#late'
  post 'loans/create/:customer_id/:book_id' => 'loans#create'
  put 'loans/return/:id' => 'loans#return'

  resources :loans
end
