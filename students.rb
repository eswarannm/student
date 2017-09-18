students = []
eye_colors = []
ages = []

File.open("student_data.csv").each do |line|
	info = line.split(",")
	students.push(info[0].strip)
	eye_colors.push(info[1].strip)
	ages.push(info[2].strip.to_i)
end


def students_with_brown_eyes(eye_colors)
	n = 0

	eye_colors.each do |eye_color|
		if eye_color == "Brown"
			n += 1
		end
	end

	return n
end



#puts students_with_brown_eyes(eye_colors)

def students_able_to_drive(ages, students)
	answer = []
	ages.each_with_index do |age, i|
		if age >= 16
			answer.push(students[i]) 
		end
	end

	return answer
end

#print students_able_to_drive(ages, students), "\n"


def girls_with_green_eyes(students, eye_colors)
	girls = []
	girls_with_green_eyes = []
	students.each_with_index do |student, i|
		if i%2 == 0
			girls.push(eye_colors[i])
			girls.push(students[i])
		end
	end

	girls.each_with_index do |eye_color, i|
		if eye_color == "Green"
			girls_with_green_eyes.push(students[i])
		end
	end

	return girls_with_green_eyes
end

#print girls_with_green_eyes(students, eye_colors)
def vowel_counter (students)
	numbers_of_vowels = 0
	students.chars.each_with_index do |letter|
		if letter == "a" || letter == "e" || letter == "i" || letter == "o" || letter == "u"
			numbers_of_vowels += 1
	 	end
 	end
 	return numbers_of_vowels
end

def vowels_sophomore (ages, students)
	most_vowels = ""
	sophomore = []
	ages.each_with_index do |age, i|
		if age == 15 
			sophomore.push(students[i])
		end
	end

	sophomore.each do |sophomore, i|
		if vowel_counter(sophomore) > vowel_counter(most_vowels)
			most_vowels = sophomore
		end
	end

	return most_vowels
end

#print vowels_sophomore(ages, students)


def average_age_green_eyes(eye_colors, ages)
	peps_with_green_eyes = []
	total_age = 0
	people = 0
	average_age = 0
	eye_colors.each_with_index do |eye_color, i|
		if eye_color == "Green"
			peps_with_green_eyes.push(ages[i])
			people += 1
		end
	end
	puts people

	peps_with_green_eyes.each_with_index do |age, i|
		total_age += age
	end
	puts total_age
	average_age = total_age / people 

	return average_age
end

puts average_age_green_eyes(eye_colors, ages)

def green_closest_average(average_age, ages)
	average_age = 
	green_closest_average	
end