#include<iostream>
#include<string>
#include<stdio.h>
#include<algorithm>
#include<fstream>
#include<stdlib.h>

using namespace std;
int freq[26];

bool compare(int i,int j)  //needed to sort the array using STL sort()
{
return (i>j);  //sort in descending order
}

void init()   //initialize frequence array with all 0s as no input has been scanned as of now
{
for(int i=0;i<26;i++)
freq[i]=0;
}
bool isUpperCase(char c)
{
if(c>='A' && c<='Z')
return true;
return false;
}

bool isLowerCase(char c)
{
if(c>='a' && c<='z')
return true;
return false;
}

void populateFrequencyTable(string linebuffer)
{
string::iterator i;  //scan the whole line
for(i=linebuffer.begin();i!=linebuffer.end();i++)
{
if(isUpperCase(*i))
freq[*i-'A']++;   //updates frequency
else if(isLowerCase(*i))//same for both upper case and lower case letters
freq[*i-'a']++;
else
continue; //ignore speical characters
}
sort(freq,freq+26,compare); //sort the frequency array .now the first element in the array appears most number of times
}

void calculateBeauty()
{
int score=0;
int startValue=26; //because we must give the most frequent element score of 26,
//next most frequent element score of 25 and so on
for(int i=0;i<26;i++)
{
if(freq[i]==0) break; // we donot need to consider letters which do not even appear once
score+=(startValue*freq[i]);
startValue--;//scores are 26,25,24,....
}
cout<<score<<endl;//print output
}

//our point of execution starts here
int main (int argc, char* argv[])
{
ifstream file; //to take input from file
string lineBuffer; //stores each input line from the file
file.open(argv[1]);//argv[1] is the cmd line argument supplied in the input ,it is the filename

while (!file.eof())  //while file is not finishes
{
getline(file, lineBuffer); //scan a line from the file and store it in lineBuffer
if (lineBuffer.length() == 0)
continue; //ignore all empty lines
else
{
init(); //each line is like a new test case,so initialize everything
populateFrequencyTable(lineBuffer); //calculate the frequenct of individual characters
calculateBeauty();//calculate and show the final score
}
}
return 0; //program returns 0 meaning successful execution
}