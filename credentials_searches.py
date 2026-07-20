import json
import os


def credentials_search():
    logs_file = "logs.json"
    output_file = "credentials.json"

    if not os.path.exists(logs_file):
        return

    try:
        with open(logs_file, "r") as file:
            data = json.load(file)
    except (json.JSONDecodeError, FileNotFoundError):
        return

    found = {}

    def search(obj):
        if isinstance(obj, dict):
            for key, value in obj.items():
                if key in ("password", "secret") and key not in found:
                    found[key] = value
                search(value)
        elif isinstance(obj, list):
            for item in obj:
                search(item)

    search(data)

    if found:
        with open(output_file, "w") as file:
            json.dump(found, file, indent=2)
