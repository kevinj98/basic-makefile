/* 
 * Kevin Jensen | 07.04.2019
 * Simple project to learn the basics of using a makefile
 * */

#include "common.h"

int main(void){

    // Call some test functions to check that everything is linked correctly in the Makefile
    source1_func_1();
    source2_func_1();
    source3_func_1();
    
    // To prevent the program from closing right after print
    printf("To exit the program press enter\n\n");
    getchar();

    return 0;
}