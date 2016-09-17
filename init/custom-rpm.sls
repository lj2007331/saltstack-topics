custom-rpm:
  pkgrepo.managed:
    - humanname: custom-rpm 
    - baseurl: http://10.1.1.1/custom-rpm/
    - priority: 1
    - enabled: 1
    - gpgcheck: 0
