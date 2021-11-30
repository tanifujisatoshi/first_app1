class PostsController < ApplicationController

  # addの使い方について

  def index
    @posts = Post.all
  end
# postモデルに対応するpostsテーブルに対してallメソッドを使うことでpostsテーブルにあるレコードを全て取得できる
# 取得した複数のレコードを@postsというインスタンス変数に代入することでposts/index.html.erbファイルで@postsを使うことができる

  def new
  end
# newアクションに対応するnew.html.erbは新規投稿ページである
# 新規投稿ページではpostsテーブルに保存されているデータを取得する必要が無いのでアクション内に処理を記述する必要がない

  def create
    Post.create(content: params[:content])
  end
# postモデルに対応するpostsテーブルに投稿内容を保存したいのでpostモデル(大文字から始める)にテーブルに保存するためのcreateメソッドを使っている
# どこに保存するのかはcreateメソッドの引数の左側に記述する 今回はpostsテーブルのcontentカラムに保存するということになる
# 何を保存するのかはcreateメソッドの引数の右側に記述する 投稿フォームのコードにはform.text_field :content とある
# 投稿内容を記入して投稿するボタンを押すとキーがcontentバリューが投稿内容であるparamsというハッシュが送られる
# そのハッシュから投稿内容を取り出すためにparams[:content]としている
  
end
