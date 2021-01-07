//#include "clock.h"
//#include "i2c.h"
//#include "gpio.h"
//
//#define     BUFF_DATA_LEN               64
//#define     I2C_CLK_SPEED               200000
//
//volatile unsigned char i2c_tx_buff[BUFF_DATA_LEN] = {0x00,0x11,0x22,0x33,0x44,0x55,0x66,0x77,0x88,0x99,0xaa,0xbb,0xcc,0xdd,0xee,0xff};
//volatile unsigned char i2c_rx_buff[BUFF_DATA_LEN] = {0};
//
//void i2c_user_init(){
//	i2c_gpio_set(I2C_GPIO_GROUP_C0C1);
//	i2c_master_init(0x5C, (unsigned char)(CLOCK_SYS_CLOCK_HZ/(4*I2C_CLK_SPEED)) );
//}
//
//void i2c_main(){
//	i2c_write_series(0,0,(unsigned char*)i2c_tx_buff, BUFF_DATA_LEN);
//
//	//i2c_read_series(0,0,(unsigned char*)i2c_rx_buff, BUFF_DATA_LEN);
//}
