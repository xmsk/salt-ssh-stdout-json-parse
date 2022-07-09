# copy over two different jar files to force a notable diff each time and generate the error
application executable 1:
  file.managed:
    - name: /tmp/backend.jar
    - source: salt://backend.jar
    - makedirs: True
    - dir_mode: 755
    - mode: 500
    # - show_changes: False

application executable 2:
  file.managed:
    - name: /tmp/backend.jar
    - source: salt://backend2.jar
    - makedirs: True
    - dir_mode: 755
    - mode: 500
    # - show_changes: False