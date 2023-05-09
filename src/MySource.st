NAMESPACE MyNamespace

    FUNCTION MyNewBlock
        // TODO please personalize block(name)
        
        VAR_INPUT
            
        END_VAR
        
        VAR_OUTPUT
            error : BOOL;   //  TRUE: An error occurred during the execution of the FC
            status : WORD;   //  WORD#16#0000 - WORD#16#7FFF: Status of the FB, WORD#16#8000 - WORD#16#FFFF: Error identification
            subfunctionStatus : WORD;   //  Status or return value of called FCs and system blocks
        END_VAR
        
        VAR_TEMP
            tempStatus : WORD;   //  temp value for output 'status'
            tempSubfunctionStatus : WORD;   //  temp value for output 'subfunctionStatus'
        END_VAR
        
        VAR CONSTANT
            STATUS_FINISHED_NO_ERROR : WORD := WORD#16#0000;   //  NO error - execution finished without errors
            SUB_STATUS_NO_ERROR : WORD := WORD#16#0000;   //  NO error occured in subfunction call
            ERR_UNDEFINED : WORD := WORD#16#8000;   //  Error: due to an undefined case
            ERR_IN_BLOCK_OPERATION : WORD := WORD#16#8001;   //  Error: Wrong operation of the function block
            ERR_PARAMETRIZATION : WORD := WORD#16#8200;   //  Error: during parameterization
            ERR_PROCESSING_EXTERN : WORD := WORD#16#8400;   //  Error: when processing from outside (e. g. wrong I/O signals, axis not referenced)
            ERR_PROCESSING_INTERN : WORD := WORD#16#8600;   //  Error: when processing internally (e. g. when calling a system function)
            ERR_AREA_RESERVED : WORD := WORD#16#8800;   //  Error: Reserved area
            ERR_USER_DEFINED_CLASSES : WORD := WORD#16#9000;   //  Error: User-defined error classes       
        END_VAR
    
        //===============================================================================
        // (company) / (c)Copyright (year)
        //-------------------------------------------------------------------------------
        // Title:            (Title of this Block)
        // Comment/Function: (that is implemented in the block)
        // Library/Family:   (that the source is dedicated to)
        // Author:           (department / person in charge / contact)
        // Tested with:      (test system with version)
        // Engineering:      SIMATIC AX (SDK version)
        // Restrictions:     (OB types, etc.)
        // Requirements:     (hardware, technological package, memory needed, etc.)
        //-------------------------------------------------------------------------------
        // Change log table:
        // Version  | Date       | Expert in charge       | Changes applied
        //----------|------------|------------------------|------------------------------
        // 01.00.00 | yyyy-mm-dd | (name of expert)       | First released version
        //===============================================================================
    
    
        // TODO: Initialize functionality: reset of variables, diagnostics, etc.
        //
        tempStatus := STATUS_FINISHED_NO_ERROR;
        tempSubfunctionStatus := SUB_STATUS_NO_ERROR;
        
        // TODO: Use this region for application specific code
        //
        
        // TODO: Write application specific temp values to outputs
        //
        error := tempStatus.%X15;
        status := tempStatus;
        subfunctionStatus := tempSubfunctionStatus;
    
    END_FUNCTION

END_NAMESPACE