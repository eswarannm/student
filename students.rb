
students = []
eye_colors = []
ages = []
blood_types = []

File.open("student_data.csv").each do |line|
	info = line.split(",")
	students.push(info[0].strip)
	eye_colors.push(info[1].strip)
	ages.push(info[2].strip.to_i)
	blood_types.push(info[3].strip)
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

	peps_with_green_eyes.each_with_index do |age, i|
		total_age += age
	end

	average_age = total_age / people 

	return average_age
end

#puts average_age_green_eyes(eye_colors, ages)


def green_closest_average(eye_colors, students, ages)
	average = 15
	distance_to_average = 150
	student = ""
	eye_colors.each_with_index do |color, i|
		distance_to_age = (ages[i] - average).abs
		if color == "Green"	
			if distance_to_age < distance_to_average
				distance_to_average = distance_to_age
				student = students[i]
			end
		end
	end
	return student
end

#print green_closest_average(eye_colors, students, ages)

def in_array(array, check_value)
	array.each do |value|
		if value == check_value
			return true
		end
	end

	return false
end

def blood_donors(blood_types, students, student_needing_blood)

	donors = []
	student_blood_types = ""


	students.each_with_index do |student, i|
		if student == student_needing_blood
			student_blood_types = blood_types[i]
		end
	end



 	donatable_blood = []
	if student_blood_types == "A"
   		donatable_blood = ["A", "AB"]
    elsif student_blood_types == "B"
   		donatable_blood = ["B", "AB"]
    elsif student_blood_types == "AB"
    	donatable_blood = ["AB"]
    elsif student_blood_types == "O"
   		donatable_blood = ["A", "B", "AB", "O"]
	end  


	blood_types.each_with_index do |blood_type, i|
	 	 if in_array(donatable_blood, blood_type)
	 	 		donors.push(students[i])
	 	 end
	end
 
 	return donors
end


print blood_donors(blood_types,students, "Carol")


def most_blood(students, blood_types)

	most_donors = 0
	highest_donor = ""
	highest_donors = []

	students.each_with_index do |student_name, i|

		donors = blood_donors(students, blood_types, student_name)

		if donors.length > most_donors
			most_donors = donors.length
			highest_donor = student_name
		end
	end

	highest_donors.push(highest_donor)

	students.each_with_index do |student_name, i|

		donors = blood_donors(students, blood_types, student_name)

		if donors.length == most_donors

			if student_name != highest_donor
				highest_donors.push(student_name)
			end
		end
	end
	return highest_donors, max_donors
end

print most_blood(students, blood_types)


