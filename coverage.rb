require "coverage"

Coverage.start(oneshot_lines: true, eval: true)

load "simple-eval/main.rb"
# load "erb-eval-v1/main.rb"
# load "erb-eval-v2/main.rb"

p Coverage.result
