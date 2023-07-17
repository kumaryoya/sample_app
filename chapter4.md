def palindrome_tester(s)
  if s == s.reverse
    puts "It's a palindrome!"
  else
    puts "It's not a palindrome."
  end
end

palindrome_tester("racecar")

palindrome_tester("onomatopoeia")

palindrome_tester("racecar").nil?
