require 'benchmark/ips'
STRING_HASH = { "hogehoge" => "bar" }
SYMBOL_HASH = { :hogehoge  => "bar" }
INTEGER_HASH = { 1    => "bar" }
Benchmark.ips do |x|
  x.report("String") {STRING_HASH["hogehoge"]}
  x.report("Symbol") {SYMBOL_HASH[:hogehoge]}
  x.report("Integer"){INTEGER_HASH[1]}
  x.compare!
end