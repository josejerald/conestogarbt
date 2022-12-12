import subprocess

# Add the rules to exclude to the list below
exclusion_list = ["0309", "0203", "0913", "0505", "0605", "0310"]

# Add the custom configursation to the list below
config_list = [
    "return_status:quality_gate:E=0:W=0:I=-1",
    "too-many-calls-in-keyword:max_calls:20",
    "line-too-long:line_length:175",
]


# Method to format and add rule exclusion
def rule_exclusions(ex_lst):
    ex_str = ""
    for ex in ex_lst:
        ex_str = ex_str + " -e " + ex
    return ex_str


# Method to format and add config updates
def config_setup(cnf_lst):
    cnf_str = ""
    for cnf in cnf_lst:
        cnf_str = cnf_str + " --configure " + cnf
    return cnf_str


command_robot = "robocop "
command_robot = (
    command_robot
    + rule_exclusions(exclusion_list)
    + config_setup(config_list)
    + " ./"
)


return_code = subprocess.call(command_robot.split())

command_py = "flake8 --max-line-length 79 ./"
return_code += subprocess.call(command_py.split())

if return_code != 0:
    raise Exception("Linting Failed With Errors.")
