#ifndef PERSON_H
#define PERSON_H

#include "CString.h"
typedef struct {
CString FamilyName;
CString GivenName;
}PersonType;

void SetNames(CString NewFamilyName,CString NewGivenName,PersonType *APerson);
void GetFullName(PersonType APerson,CString FullName);

#endif