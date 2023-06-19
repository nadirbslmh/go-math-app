package gomathapp

import "testing"

func TestSum(t *testing.T) {
	expected := 10
	actual := Sum([]int{1, 2, 3, 4})

	if expected != actual {
		t.Errorf("expected: %v, got: %v", expected, actual)
	}
}
