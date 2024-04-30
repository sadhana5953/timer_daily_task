# Button
  <img src="https://github.com/sadhana5953/timer_daily_task/assets/148869257/0c7244e8-4b53-4229-81dc-790308c8d840" height=22% width=35%>


# 1. What is  Asynchronous Programming?

Asynchronous programming is a programming paradigm that allows tasks or operations to run independently and concurrently, without waiting for each other to complete before moving on to the next task. 

# 2. What is Future Class ?
In Dart, a Future represents a value that may not be available yet. It encapsulates an asynchronous operation and provides a way to handle the result or error when it becomes available. The Future can be in one of three states: uncompleted, completed with a value, or completed with an error with talk about in detail in other blog.

# 3. What is Duration class & Future.delayed() constructor with Example ?
Duration Class :   
The Duration class represents an interval of time in seconds or nanoseconds and is most suited for handling shorter amounts of time, in cases that require more precision.

Future delayed constructor :  
The Future delayed constructor enables you to create a future that runs its computation after a prespecified duration.

## Example:

```bash
import 'dart:io';
void main()
{
  print("Hello dart");
  Future.delayed(Duration(seconds: 3),() {
    print("Hello flutter");
  },);
  print("Hello java");
}
```
# 4. What is the Use of the async & await keyword?
Use of async :

The async keyword is used to mark a function as asynchronous. An asynchronous function can perform tasks that may take some time to complete, such as fetching data from a network or reading from a file. 

Use of await :

The await keyword is used to pause the execution of an asynchronous function until a particular asynchronous operation is completed. It can only be used inside an async function.

# 5. What is Recursion ? With Example
Recursion is the method where a function calls itself as its subroutine.

## Example
```bash
import 'dart:async';
import 'dart:io';
void main()
{
  var count=3;

  Timer.periodic(Duration(seconds: 1), (timer) { 
     print(timer.tick);
     count--;
     if(count==0)
     {
      print('Stop');
      timer.cancel();
     }
  });
}
```
# 6. What is Timer class with example?
A countdown timer that can be configured to fire once or repeatedly. The timer counts down from the specified duration to 0.
## Example
```bash
import 'dart:async';
import 'dart:io';
void main()
{
  print("hello dart");

  Timer(Duration(seconds: 5),() {
    print("hello world");
  },);
  
  print("hello java");
}
````
# 7. What is Timer.periodic and use with Example?
periodic constructor creates a new repeating timer. The callback is invoked repeatedly with duration intervals until canceled with the cancel function.

## Example
``` bash
import 'dart:async';
import 'dart:io';
void main()
{
  Timer.periodic(Duration(seconds: 1), (timer) { 
    print("Radhe Radhe");
  });
}
}
````
