import os

print("++++ Starting the tidying up Robot code")
command = (
    "robotidy --line-length 100 --separator space "
    + "--skip-documentation --skip-comments ./"
)
os.system(command)
print("++++ End tidying up Robot Code ++++")

print("++++ Starting the tidying up Python Code ++++")
command_py = "black --line-length 79 ./"
os.system(command_py)
print("++++ End tidying up Python Code ++++")
