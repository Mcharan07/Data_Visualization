
exam_data = data.frame(
  name = c('Amy', 'James', 'Ram', 'Bheem', 'Boom'),
  score = c(12.5, 9, 16.5, 12, 9),
  attempts = c(1, 3, 2, 3, 2),
  qualify = c('yes', 'no', 'yes', 'no', 'no')
) 
print("original dataframe:")
print(exam_data)

print("Extract 3rd and 5th rows with 1st and 3rd columns:")
result = exam_data[c(3, 5), c(1, 3)]
print(result)
