# Define input and output file paths
input_file = "./clients/all_clients.txt"
output_file = "./clients/wpa2_clients.txt"

# Open the input file and read lines
with open(input_file, "r") as infile:
    lines = infile.readlines()

# Filter out lines containing 'MFP'
filtered_lines = [line for line in lines if "MFP" not in line]

# Write the filtered lines to the output file
with open(output_file, "w") as outfile:
    outfile.writelines(filtered_lines)

print("Filtered lines written to", output_file)
