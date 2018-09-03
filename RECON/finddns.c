#include <stdio.h>
#include <netdb.h>
#include <arpa/inet.h>
#include <stdlib.h>
#include <sys/types.h>
#include <string.h>

int main (int argc, char *argv[])
{
	char *alvo;
	alvo = argv[1];
	struct hostent *host;
	char *result;
	char txt[50];
	FILE *dnslist;
	dnslist = fopen(argv[2],"r");


	if(argc <2)
	{
	printf("USA ESSA MERDA DIREITO");
	return (0);
	}

	while (fscanf(dnslist, "%s", &txt) != EOF)
		{
		result = (char *) strcat(txt,alvo);
		host=gethostbyname(result);
		if(host==NULL)
		{
		continue;	
		}
		printf("Host Found: %s >>>>>>> IP: %s \n", result, inet_ntoa(*((struct in_addr *)host->h_addr)));
		}

	return 0;



}
