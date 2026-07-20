import json
def merge_two(first):
    new_dict = {}
    
    while True:
        print("Add a new entry:")
        key = input("key: ")
        
        if key == "exit":
            break
            
        value = input("value: ")
        new_dict[key] = int(value)
        
    merged_dict = first | new_dict
    return json.dumps(merged_dict)