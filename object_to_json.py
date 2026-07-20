import json

class User:
    username = 'user'
    email = 'something@mail.com'

def create_new_user(registration_data):
    dt = json.loads(registration_data)
    
    new_user = User()
    
    if 'username' in dt and 'email' in dt:
        new_user.username = dt['username']
        new_user.email = dt['email']
        return new_user
    else:
        return new_user

def user_to_json(user_obj):
    user_dict = user_obj.__dict__
    
    return json.dumps(user_dict)