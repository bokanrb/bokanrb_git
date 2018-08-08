import httplib

host = 'www.youtube.com'

    conn = httplib.HTTPConnection(host)
    conn.request('HEAD')
    response = conn.getresponse()
    print = 'Got: ', response.status, response.reason

    conn.close()

    if response.status == 200:
        print ("[!] The subdirectory '{0}' "
               "could be interesting.").format(directory)