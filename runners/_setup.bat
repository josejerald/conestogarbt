
python -m venv .venv
.venv\Scripts\activate.bat

pip install -r ./tools/requirement_files/test_exec_req.txt
webdrivermanager chrome --linkpath C:/python310
robot --outputdir ./report ./tests_api/tests

pip uninstall -r ./tools/requirement_files/test_exec_req.txt
.venv\Scripts\desactivate.bat
rm -r ./.venv/