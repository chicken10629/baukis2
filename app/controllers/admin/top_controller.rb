class Admin::TopController < ApplicationController
  def index
    # renderやredirectなどを書かなかった場合、自動的にこのアクションに対応するテンプレートが描画。
    # renderはHTML文書を生成するメソッド。生成にERBというライブラリを使用する。
    # ERBに対応するファイルは拡張子が.erbとなっている。〇〇.html.erbの形が基本。
    # 原則、ERBテンプレートはviewsディレクトリにコントローラー名ディレクトリ/アクション名ファイルとなる
    render action: "index"
  end
end
