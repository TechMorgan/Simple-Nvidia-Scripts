#include <stdio.h>
#include <stdlib.h>
#include "CString.h"
#include "Person.h"
#include "PrettyPrint.h"

int main(void) {
PersonType MyPerson;
CString InputFamilyName;
CString InputGivenName;
CString FullName;
CString OutputLine;
printf("Please hi enter the given name and family name : ");
scanf(" %s %s",InputGivenName,InputFamilyName);
SetNames(InputFamilyName,InputGivenName,&MyPerson);
GetFullName(MyPerson,FullName);
sprintf(OutputLine,"The full name is %s",FullName);
PRETTY_PRINT(OutputLine);
return(EXIT_SUCCESS);
}