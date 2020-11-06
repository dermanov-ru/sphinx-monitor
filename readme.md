# О проекте
Набор скриптов для мониторнга за сфинксом) 

Создан по мотивам проблем на битриксовом проекте. Там постоянно падал сфинкс, пришлось приделать мониторинг и подниматель по-быстрому.

# Установка php скрипта для веб-пинганатора

1. положить скрипт `sphinx_monitoring.php` в папку с сайтом
2. установить `sphinx-api` через композер

```bash
php composer.phar require neutron/sphinxsearch-api
``` 

3. скрипт должен выводить `ok` 

# Установка скрипта для мониторинга по cron'у

1. положить bash-скрипты в папку `/root/cron/sphinx/`
2. добавить права на выполнение `chmod +x /root/cron/sphinx/ -R`
3. добавить в кронтаб задание `crontab -e`

```
# Monitor sphinx
*/1 * * * *    /root/cron/sphinx/sphinx_monitor.sh >> /var/log/sphinx_monitor.txt
```