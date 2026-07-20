import sys
import os

def main():
    if len(sys.argv) != 2:
        sys.exit(1)

    file_name = sys.argv[1]

    if not os.path.exists(file_name) or not os.access(file_name, os.R_OK):
        sys.exit(1)

    try:
        with open(file_name, 'r') as input_file:
            lines = input_file.readlines()

        filtered_lines = [line for line in lines if "pineapple" not in line.lower()]

        with open("out.txt", "w") as output_file:
            output_file.writelines(filtered_lines)

    except Exception:
        sys.exit(1)

if __name__ == "__main__":
    main()