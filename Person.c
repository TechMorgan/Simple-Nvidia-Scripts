#include <string.h>
#include "CString.h"
#include "Person.h"

void SetNames(CString NewFamilyName,CString NewGivenName,PersonType *APerson) {
strcpy(APerson->FamilyName,NewFamilyName);
strcpy(APerson->GivenName,NewGivenName);
}

void GetFullName(PersonType APerson,CString FullName) {
strcpy(FullName,APerson.GivenName);
strcat(FullName," ");
strcat(FullName,APerson.FamilyName);
}