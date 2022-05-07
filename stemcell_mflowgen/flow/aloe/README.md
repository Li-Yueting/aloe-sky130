## Running aloe 
firstly, activate the environment
 for innovus etc  
 ```
 source setup.csh
 ```  
secondly, install python packages required (maybe in your venv)  
```
pip install -r requirements.txt
```   
then go to the python directory   
 ```
 cd pylib
 ```    
for a single (one-shot) run   
```
python main.py --mode single
```   
for multiple iteration runs using NSGA-II genetic algorithm  
```
python main.py --mode multiple
```
