#Скрипт обновляет мед аппараты на ССГПО
$Creds=Get-Credential
$Session=New-SSHSession -ComputerName 10.32.250.66 -Credential $Creds -AcceptKey 
Invoke-SSHCommand -SSHSession $Session -Command 'cd ansible; pwd; ansible-playbook -i inventory update_os.yaml --extra-vars "ansible_sudo_pass=QrP3cUZ7lWL?lH"';
#$result.output
#Remove-SSHSession -SSHSession $Session