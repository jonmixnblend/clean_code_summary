
cheatsheet do
  def evaluate_file_contents(file_path)
      eval(IO.read(file_path), binding)
  end

  file_names = [
      'foreword.rb',
      '1_clean_code.rb',
      '2_meaningful_names.rb',
      '3_functions.rb',
      '4_comments.rb',
      '5_formatting.rb',
      '6_objects_and_data_structures.rb',
  ]

  title 'Clean Code Notes - by Robert C. Martin'
  docset_file_name 'clean_code'
  keyword 'cleancode'
  introduction 'Notes on the book Clean Code - A Handbook of Agile Software Craftsmanship by Robert C. Martin'

  file_names.each do |file_name|
     evaluate_file_contents('./chapters/' + file_name)
  end
end



