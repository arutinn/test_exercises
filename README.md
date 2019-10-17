Solutions for [test_exercises](https://gist.github.com/valeronm/644d9a3abd1ded8bd82be9806c757237)

- First and seconds tasks with specs you can find in **"ruby_tests"** folder.
- For 3,4,5 tasks I created small Ruby on Rails API. You can find this app on **"api-app"** folder.
- For third task I created products_controller.
- For fourth task I created migration 20191017154829_add_related_articles_ids_to_product_articles.rb and added serialize to ProductArticle model.
- For fifth task I create products_articles_controller.

Testing:

To testing first and secord tasks run `rspec` command in terminal.

To testing third task start server and send request, for example: `http post "localhost:3000/products" < data.json`

To testing fifth task start server and send request, for example: `http post "localhost:3000/product_articles" < update_data.json `

 *`http` if you use httpie tool for http requests.
