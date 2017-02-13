#include "sim/init.hh"

extern "C" {
    void init_param_TimingCGRA();
}

EmbeddedSwig embed_swig_param_TimingCGRA(init_param_TimingCGRA);
