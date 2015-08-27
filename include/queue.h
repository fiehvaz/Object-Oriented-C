#ifndef QUEUE_H
#define QUEUE_H

#include "list.h"

typedef struct _IQueue IQueue;
typedef struct _LinkedQueue LinkedQueue;

struct _IQueue
{
	void (*add)(struct _IQueue *queue, int elem);
	int (*remove)(struct _IQueue *queue);
};

struct _LinkedQueue
{
	LinkedList *linkedList;
	struct _IQueue queue;
};

extern LinkedQueue* newLinkedQueue(LinkedList *linkedList);
extern void deleteLinkedQueue(LinkedQueue *queue);

#endif