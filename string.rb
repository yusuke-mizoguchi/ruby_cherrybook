# %記法で文字列を作る
# %q! !はシングルクオート
puts %q!He seid, "Don't speak."!
# %Q! !や%! !はhaダブルクオート
something = "Hello."
puts %Q!He seid, "#{something}"!
something = "Bye."
puts %Q!He seid, "#{something}"!

#-------------------------------------------------------------------------------------------------------

# ヒアドキュメント
a = <<TEXT
これはヒアドキュメントです。
複数行にわたる長い文字列を作成するのに便利です。
TEXT
puts a
#TEXTやHTML等の識別子は慣例として大文字が多い

# メソッドでヒアドキュメントを使用する際は"-"か"~"を付ける必要がある。(つけないとテキストとして機能しない)
# "~"の場合は内部文字列のインデント部分が無視される。
def some_method
  <<-TEXT
    これはヒアドキュメントです。
    <<-を使うと最後の識別子をインデントさせることができます。
  TEXT
end
puts some_method
# 半角スペースの入力
def some_method
  <<~TEXT
    \ 各行の行頭に半角スペースを2文字入れます。
    \ このとき行頭はバックスラッシュで指定します。
  TEXT
end
puts some_method
# 式展開が可能。識別子をシングルクオートで囲むと式展開が無効になる。
name = 'Alice'
a = <<TEXT
ようこそ、#{name}さん！
以下のメッセージをご覧ください
TEXT
puts a
# ヒアドキュメントを直接引数として渡す(prependは渡された文字列を先頭に追加する)
a = 'Ruby'
a.prepend(<<TEXT)
Java
Python
TEXT
puts a
# ヒアドキュメントで作成した文字列に直接upcaseを呼び出す(すべて大文字にする)
b = <<TEXT.upcase
Hello,
Goob-Bye.
TEXT
puts b
# ヒアドキュメントを2つ同時に使って配列を作る(配列については4章にて)
c = [<<TEXT1, <<TEXT2]
Alice
Bob
TEXT1
Matz
Jnchito
TEXT2
# 0番目の要素にはTEXT1の内容が入る
puts c[0]
# 1番目の要素にはTEXT2の内容が入る
puts c[1]

#-------------------------------------------------------------------------------------------------------

