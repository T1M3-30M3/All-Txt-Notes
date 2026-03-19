import requests

while True:

    path = [
        "wp-includes/js/jquery",
        "wp-includes/js/",
        "wp-content/uploads",
        "wp-includes/css",
        "wp-includes/",
        "wp-json/wp/v2/users",
        "wp-content/plugins/",
        "robots.txt",
        "xmlrpc.php",
        "phpinfo",
        "php-info.php",
        "php_info.php",
        "phpinfo.php",
        "php.php",
        "phpinfo.php3",
        "phpinfo.php4",
        "phpinfo.php5"
    ]

    domain = input("Enter your Domain [https://yourwebsite.com]:").strip()


    print("---The URLS Found Are---")
    for path in path:
        url = f"{domain}/{path}"
        response = requests.get(url)
        pathexists = response.status_code
        if (pathexists == 200):
            print("{}".format(url))
        else:
            pass



    




