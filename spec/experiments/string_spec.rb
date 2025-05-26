# RSpecはテストのほかに仕様を記述することに重点⇒テストコードが仕様書となる
# it = exampleと考える
require 'spec_helper'

describe String do
  describe "#<<"do
    example "文字の追加" do
      s = "ABC"
      s << "D"
      expect(s.size).to eq(4)
    end
    # タグをつけられる。rspec spec --tag=タグ名でタグのついたexampleだけまとめて実行
    example "nilは追加不可", :exception do
      # 原因がわからない時pendingで保留に。代わりに12行目をxexampleにするのも可
      pending("調査中")
      s = "ABC"
      # s << nil
      # expect(Target).to Matcher
      # expect(s.size).to eq(4)
      expect{s << nil}.to raise_error(TypeError)
    end
  end
end
