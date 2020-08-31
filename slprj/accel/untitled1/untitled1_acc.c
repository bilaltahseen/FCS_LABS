#include "__cf_untitled1.h"
#include <math.h>
#include "untitled1_acc.h"
#include "untitled1_acc_private.h"
#include <stdio.h>
#include "simstruc.h"
#include "fixedpoint.h"
#define CodeFormat S-Function
#define AccDefine1 Accelerator_S-Function
static void mdlOutputs ( SimStruct * S , int_T tid ) { real_T auxg4fzusl ;
real_T currentTime ; j4cp15b5gc * _rtB ; ggil1bxnr1 * _rtP ; gjlhqcaxr5 *
_rtX ; _rtX = ( ( gjlhqcaxr5 * ) ssGetContStates ( S ) ) ; _rtP = ( (
ggil1bxnr1 * ) ssGetDefaultParam ( S ) ) ; _rtB = ( ( j4cp15b5gc * )
_ssGetBlockIO ( S ) ) ; _rtB -> ewqwv2q3dr = 0.0 ; _rtB -> ewqwv2q3dr += _rtP
-> P_2 * _rtX -> i3giliamch [ 0 ] ; ssCallAccelRunBlock ( S , 0 , 1 ,
SS_CALL_MDL_OUTPUTS ) ; currentTime = ssGetTaskTime ( S , 0 ) ; if (
currentTime < _rtP -> P_4 ) { _rtB -> miev12wylv = _rtP -> P_5 ; } else {
_rtB -> miev12wylv = _rtP -> P_6 ; } auxg4fzusl = ssGetT ( S ) ; if (
ssIsSampleHit ( S , 1 , 0 ) ) { _rtB -> ihrtf2t45g = _rtP -> P_7 ; } _rtB ->
k351vhey2i = ( auxg4fzusl <= _rtB -> ihrtf2t45g ) ; if ( ssIsSampleHit ( S ,
1 , 0 ) ) { ssCallAccelRunBlock ( S , 0 , 6 , SS_CALL_MDL_OUTPUTS ) ; }
UNUSED_PARAMETER ( tid ) ; }
#define MDL_UPDATE
static void mdlUpdate ( SimStruct * S , int_T tid ) { UNUSED_PARAMETER ( tid
) ; }
#define MDL_DERIVATIVES
static void mdlDerivatives ( SimStruct * S ) { j4cp15b5gc * _rtB ; ggil1bxnr1
* _rtP ; gjlhqcaxr5 * _rtX ; illlhmsxfv * _rtXdot ; _rtXdot = ( ( illlhmsxfv
* ) ssGetdX ( S ) ) ; _rtX = ( ( gjlhqcaxr5 * ) ssGetContStates ( S ) ) ;
_rtP = ( ( ggil1bxnr1 * ) ssGetDefaultParam ( S ) ) ; _rtB = ( ( j4cp15b5gc *
) _ssGetBlockIO ( S ) ) ; _rtXdot -> i3giliamch [ 0 ] = 0.0 ; _rtXdot ->
i3giliamch [ 1 ] = 0.0 ; _rtXdot -> i3giliamch [ 0 ] += _rtP -> P_0 [ 0 ] *
_rtX -> i3giliamch [ 1 ] ; _rtXdot -> i3giliamch [ 1 ] += _rtP -> P_0 [ 1 ] *
_rtX -> i3giliamch [ 0 ] ; _rtXdot -> i3giliamch [ 1 ] += _rtP -> P_0 [ 2 ] *
_rtX -> i3giliamch [ 1 ] ; _rtXdot -> i3giliamch [ 1 ] += _rtP -> P_1 * _rtB
-> miev12wylv ; } static void mdlInitializeSizes ( SimStruct * S ) {
ssSetChecksumVal ( S , 0 , 751993304U ) ; ssSetChecksumVal ( S , 1 ,
200361670U ) ; ssSetChecksumVal ( S , 2 , 2253072021U ) ; ssSetChecksumVal (
S , 3 , 3292120703U ) ; { mxArray * slVerStructMat = NULL ; mxArray *
slStrMat = mxCreateString ( "simulink" ) ; char slVerChar [ 10 ] ; int status
= mexCallMATLAB ( 1 , & slVerStructMat , 1 , & slStrMat , "ver" ) ; if (
status == 0 ) { mxArray * slVerMat = mxGetField ( slVerStructMat , 0 ,
"Version" ) ; if ( slVerMat == NULL ) { status = 1 ; } else { status =
mxGetString ( slVerMat , slVerChar , 10 ) ; } } mxDestroyArray ( slStrMat ) ;
mxDestroyArray ( slVerStructMat ) ; if ( ( status == 1 ) || ( strcmp (
slVerChar , "8.5" ) != 0 ) ) { return ; } } ssSetOptions ( S ,
SS_OPTION_EXCEPTION_FREE_CODE ) ; if ( ssGetSizeofGlobalBlockIO ( S ) !=
sizeof ( j4cp15b5gc ) ) { ssSetErrorStatus ( S ,
"Unexpected error: Internal BlockIO sizes do "
"not match for accelerator mex file." ) ; } if ( ssGetSizeofY ( S ) != sizeof
( fvjyroui35 ) ) { static char msg [ 256 ] ; sprintf ( msg ,
"Unexpected error: Internal ExternalOutputs sizes do "
"not match for accelerator mex file." ) ; } { int ssSizeofParams ;
ssGetSizeofParams ( S , & ssSizeofParams ) ; if ( ssSizeofParams != sizeof (
ggil1bxnr1 ) ) { static char msg [ 256 ] ; sprintf ( msg ,
"Unexpected error: Internal Parameters sizes do "
"not match for accelerator mex file." ) ; } } _ssSetDefaultParam ( S , (
real_T * ) & d1muiu5l4g ) ; } static void mdlInitializeSampleTimes (
SimStruct * S ) { } static void mdlTerminate ( SimStruct * S ) { }
#include "simulink.c"
