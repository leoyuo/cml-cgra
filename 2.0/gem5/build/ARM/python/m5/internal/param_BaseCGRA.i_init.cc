#include "sim/init.hh"

extern "C" {
    void init_param_BaseCGRA();
}

EmbeddedSwig embed_swig_param_BaseCGRA(init_param_BaseCGRA);
