def remember_the_apple(fruits):
    if not fruits:
        return []

    if 'apple' not in fruits:
        fruits.append('apple')
    
    return fruits