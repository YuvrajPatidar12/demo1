=begin
Try to solve this question within 20 minute

hash = {
  "cj_api" => {
    "links" => {
      "total_matched" => "25",
      "records_returned" => "10",
      "link" => [{
        "advertiser_id" => "12345678",
        "promotion-end-date" => nil,
        "language" => "English",
        "clickUrl" => "https://www.example1.com"
      },
      {
        "advertiser_id" => "112",
        "promotion-end-date" => "2022-01-01",
        "language" => "hindi",
        "clickUrl" => "https://www.example2.com"
      }]
    }
  }
}

Test Case 1
 Get clickURL when promotion-end-date is null (or empty) and language exists

Test Case 2
Get clickURL when promotion-end-date is present and language is also present.

If you have any query regarding the above question please ping me and once done please let me know

=end

hash = {
  "cj_api" => {
    "links" => {
      "total_matched" => "25",
      "records_returned" => "10", 
      "link" => [{
        "advertiser_id" => "12345678",
        "promotion-end-date" => nil,
        "language" => "English",
        "clickUrl" => "https://www.example1.com"
      },
      {
        "advertiser_id" => "112",
        "promotion-end-date" => "2022-01-01",
        "language" => "hindi",
        "clickUrl" => "https://www.example2.com"
      }
    ]
    }
  }
}

def promotion hash

  hash2=hash["cj_api"]["links"]["link"].select do |link|
    link if (link["promotion-end-date"].nil? && link.key?("language")) ||  (link["promotion-end-date"].length>0 || link["language"].length>0 )
  end
  hash2.map{|itm| itm['clickUrl']}
end

puts promotion(hash)