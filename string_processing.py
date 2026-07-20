import re

def tokenize(sentence):
    lower_sentence = sentence.lower()
    
    clean_sentence = re.sub(r'[^a-z0-9]', ' ', lower_sentence)
    
    words = clean_sentence.split()
    
    return words