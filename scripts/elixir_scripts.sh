# Test scripts
mix test --trace
mix test --slowest 10
# run a single test over and over
(for i in {1..10}; do mix test test/lib/my_app/features/my_browser_test.exs:10 > /dev/null; echo $?; done) | paste -s -d+ - | bc

git ls-files | xargs -n1 git blame --line-porcelain | sed -n 's/^author //p' | sort -f | uniq -ic | sort -nr
