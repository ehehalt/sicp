# SICP 1.1.4
# Compound Procedures

def square(x):
	return x * x

def sum_of_squares(x, y):
	return square(x) + square(y)

print(square(4))
print(sum_of_squares(2, 3))