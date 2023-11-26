import os

def rename_png_files():
    # Get the current directory
    current_dir = os.getcwd()

    # Get a list of all files in the current directory
    files = os.listdir(current_dir)

    # Filter out directories and keep only PNG files
    png_files = [file for file in files if os.path.isfile(os.path.join(current_dir, file)) and file.lower().endswith('.png')]

    # Sort the PNG files alphabetically
    png_files.sort()

    # Rename the PNG files
    for i, file in enumerate(png_files):
        # Construct the new file name
        new_name = str(i) + '.png'

        # Rename the PNG file
        os.rename(os.path.join(current_dir, file), os.path.join(current_dir, new_name))

    print("PNG files renamed successfully.")

# Call the function to rename PNG files
rename_png_files()
