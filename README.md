## Dynamicky načítatelné rozšíření SNMP agenta

Autor: Martin Kostelník (xkoste12)

Datum: 18.11.2020

---

### Popis programu

Tento projekt implementuje dynamicky načítatelné rozšíření SNMP agenta s vlastním MIB modulem. MIB modul obsahuje čtyři objekty. Můj VUT login, aktuální UTC čas, proměnnou číselného typu a kapacitu operační paměti systému.

### Příklad spuštění

Projekt je nejprve nutné přeložit příkazem `make` v adresáři projektu. Vznikne binární soubor s názvem `ISAMIBModule.so`, který lze dynamicky načíst do běžícího SNMP agenta.

V jednom okně terminálu spustíme SNMP agenta příkazem 

`snmpd -f -L`

poté v druhém terminálu můžeme načíst náš modul následující sekvencí příkazů:

`snmpset localhost UCD-DLMOD-MIB::dlmodStatus.1 i create`

`snmpset localhost UCD-DLMOD-MIB::dlmodName.1 s "ISAMIBModule" UCD-DLMOD-MIB::dlmodPath.1 s "/absolute/path/to/ISAMIBModule.so"`

`snmpset localhost UCD-DLMOD-MIB::dlmodStatus.1 i load`

Pokud vše proběhlo v pořádku, můžeme funkčnost otestovat příkazem

`snmpget localhost ISA-MIB::loginObject.0`

a na výstupu bychom měli vidět login `xkoste12`.

### Odevzdané soubory

- README.md
- manual.pdf
- ISA-MIB.txt
- ISAMIBModule.c
- ISAMIBModule.h
- Makefile
