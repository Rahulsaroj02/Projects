#include <iostream>
#include <vector>
#include <string>
using namespace std;

struct Task{
    string description;
    bool completed;
};

void showTasks(vector<Task>& tasks){
    cout<<"---Do List---"<<endl;
    for(int i=0;i<tasks.size();i++){
        cout<<i+1<<".["<<(tasks[i].completed ? "✓":"")<<"]"<<tasks[i].description<<endl;
    }
}
int main(){
    int f=0;
    vector<Task> tasks;
    int choice;
    cout<<"1.Add Task\n2.View\n3.Edit\n4.mask as completed\n5.Delete\n6.Exit\n";
    while(true){
        if(f==1){
            break;
        }
        cout<<"Enter your choice:";
        cin>>choice;
        
        switch(choice){
            case 1:{
                Task newTask;
                cout<<"Enter task description: ";
                cin.ignore();
                getline(cin, newTask.description);
                newTask.completed=false;
                tasks.push_back(newTask);
                break;
                
            }
            case 2:
                showTasks(tasks);
                break;
            case 3:{
                int i;
                showTasks(tasks);
                cout<<"Enter task index you want edit: ";
                cin>>i;
                
                if (i >= 1 && i <= tasks.size()){
                    cout<<"Edit task description: ";
                    cin>>tasks[i-1].description;}
                else
                    cout << "Invalid task number!\n";
                
                showTasks(tasks);
                break;
            }
            case 4:{
                int i;
                showTasks(tasks);
                cout<<"Enter task number to mark as complete or not complete: ";
                cin>>i;
                
                if (i >= 1 && i <= tasks.size()){
                    cout<<"Edit status using 0(not complete) or 1(completed:): ";
                    cin.ignore();
                    cin>>tasks[i-1].completed;
                }
                else{
                    cout << "Invalid task number!\n";
                }
                
                showTasks(tasks);
                break;
            }
            case 5:{
                int i;
                showTasks(tasks);
                cout<<"Enter task index you want delete: ";
                cin>>i;
                
                if (i >= 1 && i <= tasks.size()){
                    tasks.erase(tasks.begin() + i - 1);}
                else{
                    cout << "Invalid task number!\n";
                }
                showTasks(tasks);
                break;
            }
            case 6:
                cout<<"Exiting To-Do List...\n";
                f=1;
                break;
            default:
                cout<<"Invalid input! Enter valid input";
            
        }
    }
}
