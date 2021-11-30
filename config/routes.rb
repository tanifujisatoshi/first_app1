Rails.application.routes.draw do
  get "/", to: "posts#index"
  get "/posts/new", to: "posts#new"
  post "/posts", to: "posts#create"
end

# addの使い方について

# /というURLでリクエストを送るとそのリクエストはルーティングに進みそのURLにあったpostsコントローラーのindexアクションに進ませる
# indexアクションに対応したposts/index.html.erbファイルがブラウザに表示される


# 新規投稿ページのHTMLを取得したいのでHTTP通信(クライアントとサーバーの間でデータを送受信するための通信)で使われるHTTPメソッドはGETになる
# 新規投稿ページに行くために/posts/newというパスでリクエストを送るとpostsコントローラーのnewアクションに繋がる

# /postsというURLで投稿内容を持ったリクエストを送るとそのリクエストはまずルーティングにくる
# これから投稿内容が送信されようとしているのでHTTPメソッドはpostにする必要がある
# URLに関しては一覧表示と被っているがHTTPメソッドが異なっているので気にすることはない
# /postsというURLでリクエストが来たのでそのURLに対応するpostsコントローラーのcreateアクションが動く
