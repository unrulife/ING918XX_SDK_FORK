#ifndef _UART_CONSOLE_H
#define _UART_CONSOLE_H
#include <stdint.h>


void cmd_help(const char *param);
void console_rx_data(const char *d, const uint8_t len);

#endif
