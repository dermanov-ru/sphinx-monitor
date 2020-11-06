# � �������
����� �������� ��� ���������� �� ��������) 

������ �� ������� ������� �� ����������� �������. ��� ��������� ����� ������, �������� ��������� ���������� � ����������� ��-��������.

# ��������� php ������� ��� ���-�����������

1. �������� ������ `sphinx_monitoring.php` � ����� � ������
2. ���������� `sphinx-api` ����� ��������

```bash
php composer.phar require neutron/sphinxsearch-api
``` 

3. ������ ������ �������� `ok` 

# ��������� ������� ��� ����������� �� cron'�

1. �������� bash-������� � ����� `/root/cron/sphinx/`
2. �������� ����� �� ���������� `chmod +x /root/cron/sphinx/ -R`
3. �������� � ������� ������� `crontab -e`

```
# Monitor sphinx
*/1 * * * *    /root/cron/sphinx/sphinx_monitor.sh >> /var/log/sphinx_monitor.txt
```