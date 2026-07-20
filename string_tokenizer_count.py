import re
from collections import Counter

def tokenizer_counter(string):
    lowerit = string.lower()
    
    clean = re.sub(r'[^a-z0-9\s]', '', lowerit)
    
    words = clean.split()
    
    counts = Counter(words)
    
 
    sorted_counts = dict(sorted(counts.items()))
    
    return sorted_counts