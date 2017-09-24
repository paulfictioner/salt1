apache:
 pkg.installed:
  - name: apache2

index_html:
 file.managed:
  - name: /var/www/html/index.html
  - user: www-data
  - group: www-data
  - mode: 644
  - source: salt://apache2/templates/index.html

apache_services:
 service.running:
  - name: apache2
  - enable: True
