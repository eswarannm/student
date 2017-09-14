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



puts students_with_brown_eyes(eye_colors)

def students_able_to_drive(ages, students)
	answer = []
	ages.each_with_index do |age, i|
		if age >= 16
			answer.push(students[i]) 
		end
	end

	return answer
end

print students_able_to_drive(ages, students), "\n"


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

print girls_with_green_eyes(students, eye_colors)


def vowels_sophomore (age, students)
	sophomore = []
	vowels_sophomore = []
	ages.each_with_index do |age, i|
		if age == 15
			sophomore.push(students[i]) 
		end
	end
	
	vowels_sophomore.each_with_index do |students, i|
		student_letters = sophomore[i].chars.each_with_index
		vowels = 0
		if student_letters == a || student_letters == e || student_letters == i || student_letters == o || student_letters == u
		vowels += 1
		end

	end

	return vowels_sophomore
end

print vowels_sophomore (age, students)

#print students, "\n"
#print eye_colors, "\n"
#print ages, "\n"