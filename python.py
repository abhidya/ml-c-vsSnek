import sys


def selfDividingNumbers(test):
    average = 0
    count = 0

    def self_dividing(n):
        for d in str(n):
            digit = int(d)
            if digit == 0 or n % digit != 0:
                return False
        return True

    for n in range(test + 1):
        if self_dividing(n):
            count += 1
            average += n

    return average // count


upper = int(sys.argv[1]) if len(sys.argv) > 1 else 100000000
print(selfDividingNumbers(upper))
