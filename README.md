# Android_End2End_dataset_design
The project is to devise an efficient embedding technique to handle the limitations in the conventional one-hot encoding. On top of this embedding technique propose and end-to-end detection of Andriod malware to avoid the cumbersome handcrafted feature extraction process.
# Project steps
# Step 1
First step is to extract dex file from the Android apks
Dex_extraction.sh script is for reverse enigneering of all the Android apks, unzip the apks to extract dex file
# Step 2
The next step is extract opcodes from the dex files
Opcodes_extraction.py is a python script for extracting opcodes from the source code of Android dex file
# Step 3
The third step is learn the opcode embeddings using https://towardsdatascience.com/an-implementation-guide-to-word2vec-using-numpy-and-google-sheets-13445eebd281 word2vec technique.
# Step 4
The last step is to use the embedding learned in step 3 to develop a dataset for end-to-end detection of Android malware
End2End_dataset.sh is a script to designe the complete end-to-end dataset
# Step 5
Feed the developed dataset to deep learing model to develop a malware detection technique.
