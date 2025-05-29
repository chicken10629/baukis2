class ApplicationController < ActionController::Base
  layout :set_layout

    def set_layout
      if admin_controller?
        'admin'
      elsif staff_controller?
        'staff'
      elsif customer_controller?
        'customer'
      else
        'application'
      end
    end

    # 通常、コントローラーと同じ名前のレイアウトが優先されるが、なければapplicationのレイアウトが選択
    # つまりstaff/topの場合,layouts/staff/top⇒layouts/applicationの順番。
    # 今回はlayoutメソッドとオリジナルメソッドの組み合わせでコントローラーごとに決定している
    # paramsはリクエストから送られてきた全データをまとめて持っているオブジェクト やろうとおもえば大体ひろってこれる
    # matchはStringクラスのインスタンスメソッド。引数に正規表現をとり、URLパスがその正規表現と合致するか調べる。
    # 正規表現は文字列に特定のパターンがあるか調べる。Regexpを使って調べる。
      # if params[:controller].match(%r{\A(staff|admin|customer)/})
      # %r{}の中身が正規表現。\Aは文字列の最初。(staff|admin|custmor)はいずれかにマッチ。
      # つまりコントローラーの最初がstaff/か、admin/か、customer/か？
      #   Regexp.last_match[1]
      # Regexp.last_matchは再起表現にマッチした文字列に関する情報を保持。正規表現に含まれる一番目のカッコで囲まれた部分にマッチした文字列を返す。
      # つまり()で囲まれたstaffかadminかcustomerのどれかを返す
      # else
      #   "customer"
      # end

    def admin_controller?
      self.class.module_parent_name == 'Admin'
    end

    def staff_controller?
      self.class.module_parent_name == "Staff"
    end

    def customer_controller?
      self.class.module_parent_name == "Customer"
    end
end
