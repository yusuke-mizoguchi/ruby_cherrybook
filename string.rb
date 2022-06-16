# %記法で文字列を作る
# %q! !はシングルクオート
puts %q!He seid, "Don't speak."!
# %Q! !や%! !はhaダブルクオート
something = "Hello."
puts %Q!He seid, "#{something}"!
something = "Bye."
puts %Q!He seid, "#{something}"!
