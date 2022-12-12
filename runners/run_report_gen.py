import os

path = "./report"

files_to_merge = ""

for root, dirs, files in os.walk(path):
    for file in files:
        if file.endswith("output.xml") and "pabot_result" not in root:
            files_to_merge = files_to_merge + os.path.join(root, file) + " "

print("Merging test reports to one report")

command = (
    "rebot --timestampoutputs --output ./report/output.xml --merge "
    + files_to_merge
)
os.system(command)
