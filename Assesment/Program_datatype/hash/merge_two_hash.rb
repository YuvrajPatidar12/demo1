def merge_hashes(hash1, hash2)
  merged_hash = hash1.merge(hash2)
  return merged_hash
end

def merge(hash1, hash2)
  hash1.merge!(hash2)
end

hash1 = { "a" => 1, "b" => 2 }
hash2 = { "b" => 3, "c" => 4 }
puts merge(hash1,hash2)
result_hash = merge_hashes(hash1, hash2)
puts result_hash



