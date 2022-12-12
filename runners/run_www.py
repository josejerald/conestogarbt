import sys
import os


# unbox the cmdline arguements to format the robot call
def unbox_args():
    var_lst = sys.argv[1:]
    arg = {}
    for var in var_lst:
        split_var = var.split(":")
        arg[split_var[0]] = split_var[1]
    return arg


# format the robot call command
def format_command(var_dict):
    command = "pabot --testlevelsplit -v site:www"
    command = (
        command
        + " --include wwwAND"
        + var_dict["type"]
        + " -v env:"
        + var_dict["env"]
        + " -v browser:"
        + var_dict["browser"]
        + " --outputdir ./report/www ./"
    )
    return command


var_dict = unbox_args()
print(
    "Running Corp Website tests for Env:"
    + var_dict["env"]
    + " and Test Type:"
    + var_dict["type"]
    + " in Browser:"
    + var_dict["browser"]
)
command = format_command(var_dict)
os.system(command)
