#ifndef __PARAMS__TimingCGRA__
#define __PARAMS__TimingCGRA__

class TimingCGRA;


#include "params/BaseCGRA.hh"

struct TimingCGRAParams
    : public BaseCGRAParams
{
    TimingCGRA * create();
    unsigned int port_dcache_port1_connection_count;
    unsigned int port_dcache_port2_connection_count;
    unsigned int port_dcache_port3_connection_count;
    unsigned int port_dcache_port4_connection_count;
};

#endif // __PARAMS__TimingCGRA__
