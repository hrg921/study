#include <iostream>

using namespace std;

int GetCycleLength(int num) {
	int count = 0;
	while(num != 1) {
		count++;
		if(num % 2 != 0) num = 3 * num + 1; 
		else num /= 2;
	} count++; // include 1
	return count;
}

int main() {
	int i, j, max = 0;
	cin >> i >> j;
	for(int index = i; index <= j; index++) {
		int cycleLength = GetCycleLength(index);
		if(cycleLength > max) max = cycleLength;
	}
	cout << i << " " << j << " " << max;
	return 0;
}
