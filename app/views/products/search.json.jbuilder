json.array!(@titles) do |title|
  json.title_en         title.title_en
  json.title_ko        title.title_ko
end
