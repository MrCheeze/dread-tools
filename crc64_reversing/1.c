#include <assert.h>
#include <stdio.h>
#include <string.h>
#include <stdint.h>
#include <inttypes.h>

// From https://sat-smt.codes/SAT_SMT_by_example.pdf 13.2

uint64_t CRC64(uint64_t crc, uint8_t *buf, size_t len)
{
	int k;

	while (len--)
	{
		crc ^= *buf++;
		for (k = 0; k < 8; k++)
			crc = crc & 1UL ? (crc >> 1) ^ 0xc96c5795d7870f42UL : crc >> 1;
	}
	return crc;
}

//#define STR "difficultydefs"
#define STRLEN 14
#define HASH 0xc6074cfe37cec417

void check()
{
	char buf[STRLEN+1];
	buf[STRLEN]=0;
	int string_correct=1;
	for (int i=0; i<STRLEN; i++)
	{
		uint8_t t=buf[i];
		int char_correct=(t>='a' && t<='z');
		if (!char_correct)
			string_correct=0;
	};
	if (string_correct)
	{
		assert (CRC64(0xdf48d739b1a7c0e0, buf, STRLEN)!=HASH);
	};
};

int main()
{
	printf("%s %lX\n", "abcd", CRC64(0xFFFFFFFFFFFFFFFF, "abcd", strlen("abcd")));
	printf("%s %lX\n", "abcd", CRC64(CRC64(0xFFFFFFFFFFFFFFFF, "ab", 2), "cd", 2));
};
