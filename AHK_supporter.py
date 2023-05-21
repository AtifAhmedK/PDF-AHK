# This is to extract all the file paths in a specified folder
import os

root_dir = (r"C:\Users\atif\Desktop\Internship IISc\patient_pft")
root_files = os.listdir(pft_dir)
#print(pft_files)
			
txt_file = "pdf_list.txt" #file required for AHK script

with open(txt_file, 'w') as file:
	for pdf_file_name in root_files:
		if pdf_file_name.endswith('.pdf'):
			#print(pft_file_name)
			full_path = root_dir + '\\' + pdf_file_name + '\n'
			file.writelines(full_path)
	
