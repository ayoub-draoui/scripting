def clean_list(shopping_list):
    if not shopping_list:
        return []
    

    # if 'milk' not in shopping_list:
    #     shopping_list.append('milk')

    res = []
    exist=False
    for i, item in enumerate(shopping_list, start=1):
        c=item.strip().capitalize()
        if c == 'Milk':
            exist=True        
        formt = f"{i}/ {c}"
        
        res.append(formt)
    if exist==False:
        res.append(f"{len(res)+1}/ Milk")
    return res