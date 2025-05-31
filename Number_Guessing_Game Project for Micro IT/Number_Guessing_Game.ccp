// Online C++ compiler to run C++ program online
#include <iostream>
#include <cstdlib>
#include <ctime>

using namespace std;

int main() {
    int NumToGuess,UserGuess,MaxAt,RemAt=1;
    
    cout<<"Welcome to Number Guessing Game"<<endl;
    srand(time(0));
    NumToGuess =rand()%100;
    cout<<NumToGuess<<endl;
    cout<<"A random number has been generated,Try to guess it"<<endl;
    cout<<"Number of attemps you want:";
    while (!(cin >> MaxAt) || MaxAt <= 0) {
        cout << "Invalid input! Please enter a positive integer: ";
        cin.clear();
        cin.ignore(numeric_limits<streamsize>::max(), '\n');
    }
    cout<<"You have "<<MaxAt<<" attemps"<<endl;
    while(RemAt<=MaxAt){
        cout<<RemAt<<"/"<<MaxAt<<" attemp:";
        while (!(cin >> UserGuess)) {
            cout << "Invalid input! Please enter a number:";
            cin.clear();
            cin.ignore(numeric_limits<streamsize>::max(), '\n');
        }
        if(UserGuess<NumToGuess){
            cout<<"Too Low"<<endl;
            RemAt+=1;
        }
        else if(UserGuess>NumToGuess){
            cout<<"Too High"<<endl;
            RemAt+=1;
        }
        else{
            cout<<"Congratulations! You guessed the correct Number in "<<RemAt<<" attemps";
            break;
        }
        if(RemAt==MaxAt+1){
            cout<<"Sorry! You have used all your attemps";
        }
    }
}
