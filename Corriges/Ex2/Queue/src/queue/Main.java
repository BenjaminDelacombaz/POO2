/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package queue;

/**
 *
 * @author phi
 */
public class Main {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        Queue smallArrayQueue = new ArrayQueue();
        Queue smallListQueue = new ListQueue();

        Queue largeArrayQueue = new ArrayQueue();
        Queue largeListQueue = new ListQueue();

        fillQueue(smallArrayQueue, 100);
        fillQueue(smallListQueue, 100);

        fillQueue(largeArrayQueue, 100000);
        fillQueue(largeListQueue, 100000);

        int iterationCount = 500000;
        try {
            benchmarkEnqueue(smallArrayQueue, iterationCount, "Enqueue in small Array: ");
            benchmarkEnqueue(smallListQueue , iterationCount, "Enqueue in small List : ");
            benchmarkEnqueue(largeArrayQueue, iterationCount, "Enqueue in large Array: ");
            benchmarkEnqueue(largeListQueue , iterationCount, "Enqueue in large List : ");

            benchmarkDequeue(smallArrayQueue, iterationCount, "Dequeue in small Array: ");
            benchmarkDequeue(smallListQueue , iterationCount, "Dequeue in small List : ");
            benchmarkDequeue(largeArrayQueue, iterationCount, "Dequeue in large Array: ");
            benchmarkDequeue(largeListQueue , iterationCount, "Dequeue in large List : ");
        }
        catch (EmptyQueueException ex) {
        }
    }

    public static void fillQueue(Queue queue, int itemCount) {
        for (int i=0; i<itemCount; i++) {
            queue.enqueue(Math.random()*1000000);
        }
    }

    public static void benchmarkEnqueue(Queue queue, int iterationCount, String message) {
        long start = System.currentTimeMillis();
        for (int i=0; i<iterationCount; i++)
            queue.enqueue(99);
        long end = System.currentTimeMillis();
        System.out.println(message + (end - start) + " milliseconds");
    }

    public static void benchmarkDequeue(Queue queue, int iterationCount, String message) throws EmptyQueueException {
        long start = System.currentTimeMillis();
        for (int i=0; i<iterationCount; i++)
            queue.dequeue();
        long end = System.currentTimeMillis();
        System.out.println(message + (end - start) + " milliseconds");
    }

}
