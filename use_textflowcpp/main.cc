#include <iostream>
#include <TextFlow.hpp>
                     
using std::string;
using std::cout;
using std::endl;
                     
using TextFlow::Column;
                     
int main()
{
  string line;
  string alllines;
                     
  while (std::getline(std::cin, line))
    {
      alllines += line + '\n';
    }
                     
  const Column result = Column(alllines).width(80);
                     
  cout << result << endl;
}

/*

  g++ -I/tmp/textflowcpp main.cc
  
 */

