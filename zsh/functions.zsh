run()
{
    g++ -Wall -g -O2 -std=c++11 -o $1 $1.cpp  &&
    rm $1
}
