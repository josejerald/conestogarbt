Echo Merging test results
Set files=./report/ce/output.xml ./report/www/output.xml ./report/ortn/output.xml
IF NOT EXIST "./report/ce/output.xml" (
    Set files=%files:./report/ce/output.xml=%
)
IF NOT EXIST "./report/www/output.xml" (
    Set files=%files:./report/www/output.xml=%
)
IF NOT EXIST "./report/ortn/output.xml" (
    Set files=%files:./report/ortn/output.xml=%
)

rebot --timestampoutputs --output ./report/output.xml --merge %files%