/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                       */
/*  \   \        Copyright (c) 2003-2009 Xilinx, Inc.                */
/*  /   /          All Right Reserved.                                 */
/* /---/   /\                                                         */
/* \   \  /  \                                                      */
/*  \___\/\___\                                                    */
/***********************************************************************/

#include "xsi.h"

struct XSI_INFO xsi_info;

char *IEEE_P_2592010699;
char *STD_STANDARD;
char *SIMPRIM_P_0947159679;
char *IEEE_P_2717149903;
char *STD_TEXTIO;
char *SIMPRIM_P_4208868169;
char *IEEE_P_1367372525;


int main(int argc, char **argv)
{
    xsi_init_design(argc, argv);
    xsi_register_info(&xsi_info);

    xsi_register_min_prec_unit(-12);
    ieee_p_2592010699_init();
    std_textio_init();
    ieee_p_2717149903_init();
    simprim_p_0947159679_init();
    ieee_p_1367372525_init();
    simprim_p_4208868169_init();
    simprim_a_2736823432_2431929443_2655024506_init();
    simprim_a_2736823432_2431929443_2421368002_init();
    simprim_a_2736823432_2431929443_2601477119_init();
    simprim_a_2736823432_2431929443_2559293329_init();
    simprim_a_2736823432_2431929443_2142589244_init();
    simprim_a_2736823432_2431929443_2571754918_init();
    simprim_a_2736823432_2431929443_3361791510_init();
    simprim_a_2736823432_2431929443_3321322432_init();
    simprim_a_2736823432_2431929443_2121743115_init();
    simprim_a_2736823432_2431929443_2017609062_init();
    simprim_a_2736823432_2431929443_2654066385_init();
    simprim_a_2736823432_2431929443_1420783427_init();
    simprim_a_2736823432_2431929443_2683550950_init();
    simprim_a_2736823432_2431929443_2676105037_init();
    simprim_a_2736823432_2431929443_2348577352_init();
    simprim_a_2736823432_2431929443_3275528491_init();
    simprim_a_2736823432_2431929443_3382883361_init();
    simprim_a_2736823432_2431929443_2319325311_init();
    simprim_a_3156740924_4150518722_2676105037_init();
    simprim_a_3156740924_4150518722_2348577352_init();
    simprim_a_3156740924_4150518722_3275528491_init();
    simprim_a_3156740924_4150518722_3382883361_init();
    simprim_a_3156740924_4150518722_2319325311_init();
    simprim_a_3936907874_4055128042_2017609062_init();
    simprim_a_3936907874_4055128042_2654066385_init();
    simprim_a_3936907874_4055128042_1420783427_init();
    simprim_a_3936907874_4055128042_2683550950_init();
    simprim_a_3793035803_1957906245_2017609062_init();
    simprim_a_0549307915_1957906245_2017609062_init();
    simprim_a_3235304923_1957906245_2654066385_init();
    simprim_a_1745215798_1957906245_2654066385_init();
    simprim_a_3691246668_1957906245_1420783427_init();
    simprim_a_3934223591_1957906245_1420783427_init();
    simprim_a_1246049111_1957906245_2683550950_init();
    simprim_a_0549307915_1957906245_2683550950_init();
    simprim_a_2391340086_1957906245_3000827124_init();
    simprim_a_3803203690_1957906245_3005126339_init();
    simprim_a_1509725169_3980060181_0433961640_init();
    simprim_a_4181367278_3380326129_0433961640_init();
    simprim_a_2155285624_1178295121_0433961640_init();
    work_a_3040790445_0632001823_init();
    work_a_1419209074_2372691052_init();


    xsi_register_tops("work_a_1419209074_2372691052");

    IEEE_P_2592010699 = xsi_get_engine_memory("ieee_p_2592010699");
    xsi_register_ieee_std_logic_1164(IEEE_P_2592010699);
    STD_STANDARD = xsi_get_engine_memory("std_standard");
    SIMPRIM_P_0947159679 = xsi_get_engine_memory("simprim_p_0947159679");
    IEEE_P_2717149903 = xsi_get_engine_memory("ieee_p_2717149903");
    STD_TEXTIO = xsi_get_engine_memory("std_textio");
    SIMPRIM_P_4208868169 = xsi_get_engine_memory("simprim_p_4208868169");
    IEEE_P_1367372525 = xsi_get_engine_memory("ieee_p_1367372525");

    return xsi_run_simulation(argc, argv);

}
