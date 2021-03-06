/**
 * @file ISAMIBModule.h
 * @author Martin Kostelník (xkoste12)
 * @brief ISA Project 2020: C file specifying dynamically loaded extension to SNMP agent.
 * @version 1.0
 * @date 2020-11-18
 * 
 * @copyright Copyright (c) 2020
 * 
 */

/*
 * Note: this file originally auto-generated by mib2c using
 *        $
 */
#ifndef ISAMIBMODULE_H
#define ISAMIBMODULE_H

/* function declarations */
void init_ISAMIBModule(void);
Netsnmp_Node_Handler handle_loginObject;
Netsnmp_Node_Handler handle_timeObject;
Netsnmp_Node_Handler handle_intObject;
Netsnmp_Node_Handler handle_ramObject;

#endif /* ISAMIBMODULE_H */
