 

def do_punishment(first_part : str , 
                  second_part :str , 
                  nb_lines : int)  -> str : 
    sentence = f"{first_part.strip()} {second_part.strip()}.\n"
    return sentence* nb_lines 



# print(do_punishment('   The first half   ', '   and the second  ', 4))


print(do_punishment('   The first half   ', '   and the second  ', 4))
print(do_punishment('Will not', 'show', 0))
print(do_punishment('', '', 3))