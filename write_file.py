import datetime as dt

def to_do(tasks):
    with open("output.txt", "w") as file:
        
        for date_obj, task_name in tasks:
        
            formatted_date = date_obj.strftime("%A %d %B %Y")
            
            line = f"{formatted_date}: {task_name}\n"
            
            file.write(line)