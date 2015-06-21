#include <stdio.h>
#include "version.h"
#include "debug.h"
#include "uds_server.h"
#include "utils.h"
#include "main.h"
#include "iopcmsgbus.h"

void print_usage()
{
}

int main(int argc, char** argv)
{
    struct bind_configuration_t bind_configuration;
    char* app_name;
    char* cfg_path;

    if(argc < 3) {
        debug_error("wrong parameters\n");
        print_usage();
        return -1;
    }

    app_name = argv[1];
    cfg_path = argv[2];

    if(load_bind_configuration_from_file(&bind_configuration, cfg_path) < 0) {
        debug_error("load_bind_configuration_from_file(): error\n");
        return -1;
    }

    if(init_bind_configuration(app_name, &bind_configuration) < 0) {
        debug_error("get_bind_configuration(): error\n");
        return -1;
    }

    create_server_loop(&bind_configuration);

    return 0;
}

