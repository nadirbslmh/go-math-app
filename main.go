package gomathapp

func Sum(numbers []int) int {
	result := 0

	for _, number := range numbers {
		result += number
	}

	return result
}
