#include <stdio.h>
#include <malloc.h>
#include <string.h>	
#include <pthread.h>
#define BUFFER_SIZE 10
typedef struct {
	char type; // 0=fried chicken, 1=French fries
	int amount; // pieces or weight
	char unit; // 0=piece, 1=gram
}item;

item buffer[BUFFER_SIZE];
int first = 0;
int last = 0;

void *produce(item *i) 
{
	while ((first + 1) % BUFFER_SIZE == last) {
	// do nothing -- no free buffer item
	}
	memcpy(&buffer[first], i, sizeof(item));
	first = (first + 1) % BUFFER_SIZE;
}

item* consume() 
{
	item *i = (item*)malloc(sizeof(item));
	while (first == last) {
	// do nothing -- nothing to consume
	}
	memcpy(i, &buffer[last], sizeof(item));
	last = (last + 1) % BUFFER_SIZE;
	return i;
}

void *produce_thread()
{
	printf("first = %d, last = %d\n\n", first, last);
	item i1, i2, i3;
	i1.type = '1';
	i1.amount = 5;
	i1.unit = '1';
	printf("First item: %c, %d, %c\n", i1.type, i1.amount, i1.unit);
	i2.type = '0';
	i2.amount = 3;
	i2.unit = '0';
	printf("Second item: %c, %d, %c\n", i2.type, i2.amount, i2.unit);
	i3.type = '1';
	i3.amount = 3;
	i3.unit = '0';
	printf("Third item: %c, %d, %c\n", i3.type, i3.amount, i3.unit);
	produce(&i1);
	printf(" First item: %d, last: %d\n", first, last);
	produce(&i2);
	printf(" Second item: %d, last: %d\n", first, last);
	produce(&i3);
	printf(" Third item: %d, last: %d\n", first, last);
	item* consumed = consume();
	printf("After consume:\tConsumed item: %c, %d, %c\tfirst = %d, last=%d\n\n", consumed->type, consumed->amount, consumed->unit, first, last);
}

void *consume_thread()
{
	printf("Consume thread\n");
	consume();
	printf("Consume one item: first: %d  last: %d\n", first, last);
	consume();
	printf("Consume other item: first: %d  last: %d\n", first, last);
}

int main() 
{
	pthread_t tidproducer, tidconsumer;
	pthread_create(&tidproducer, NULL, produce_thread, NULL);
	pthread_join(tidproducer, NULL);
	pthread_create(&tidconsumer, NULL, consume_thread, NULL);
	pthread_join(tidconsumer, NULL);
// -lpthread to link to Library
	return 0;
}
