#include <stdint.h>

int32_t getc();
void putc(int32_t );

// Put the entry-point function first

void entry() {
	int32_t x=getc();
	putc(x+1);
}


int32_t getc() {
  volatile int32_t *p=(int32_t *) 0x30000000;
  return *p;
}

void putc(int x)
{
  volatile int32_t *p=(int32_t *) 0x30000004;
  *p = x;
}

