#include "application.h"

View* views[5];

void StartSysUpdateTask(void const * argument) {
	osEvent event;	
	T_SYSTEM_UPDATE *update;
	MCP4725_CONFIG mcp4725_configs[1];
	mcp4725_configs[0].addr = 0xC4;
	mcp4725_configs[0].p_i2c = &hi2c1;

	gfxInit();
	views[0] = StatusView.init();

	
	MCP4725.configure(mcp4725_configs, 1);

	while (1) {
		event = osMailGet(SYS_UPDATE_MAILBOX_ID, osWaitForever);
		if (event.status == osEventMail) {
			update = event.value.p;		
			views[0]->on_update(update);	
		}				
		osMailFree(SYS_UPDATE_MAILBOX_ID, update);		
		views[0]->render();
	}
}
void StartGuiUpdateTask(void const * argument) {
	osEvent event;
	while (1){
		event = osSignalWait(0, osWaitForever);
//		views[0]->render();
		osThreadYield();
	}
}
static void showView(uint8_t idx) {
	views[idx]->render();
}

const struct application Application = { 
	.showView = showView
};