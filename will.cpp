#include <string>
#include <sstream>
#include <iostream>
#include <cstdlib>

using namespace std;

class Solution
{
   public:
    long int selfDividingNumbers(long int  test)
    {
        long int count = 0, average = 0;

        for(long int i = 0; i < test + 1; i++) {
            int res = 0;

            stringstream ss;
            ss << i;
            string s = ss.str();
            long int num = 0;
            for(unsigned int k = 0; k < s.length(); k++) {
                char c = s[k];  // this is your character

                 num = c - '0';
                if(num)
                    res += (i % num);
                else
                    res += 1;
            }

            if(res == 0) {
                count++;
                average = i + average;
            }
        }

        return (average/count);
    }
};

int main(int argc, char** argv)
{
    Solution s;
    long int upper = 100000000;
    if(argc > 1) {
        upper = std::strtol(argv[1], nullptr, 10);
    }

    cout << s.selfDividingNumbers(upper) << endl;
    return 0;
}
