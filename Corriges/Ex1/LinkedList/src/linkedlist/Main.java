/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package linkedlist;

/**
 *
 * @author phi
 */
public class Main {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        IterableDoubleLinkedList list = new IterableDoubleLinkedList();
        System.out.format("List empty? %b\n", list.isEmpty());

        list.addTail('C');
        list.addTail('O');
        list.addTail('O');
        list.addTail('L');
        System.out.format("List size: %d\n", list.size());

        list.addHead('&');
        list.addHead('H');
        list.addHead('S');
        list.addHead('E');
        list.addHead('R');
        list.addHead('F');
        System.out.format("List size: %d\n", list.size());

        System.out.format("List empty? %b\n", list.isEmpty());

        System.out.print("List: ");
        for (Object value: list) {
            System.out.print(value.toString());
        }
        System.out.println();

        try {
            System.out.format("RemoveHead: %s\n", list.removeHead().toString());
            System.out.format("RemoveHead: %s\n", list.removeHead().toString());
            System.out.format("RemoveHead: %s\n", list.removeHead().toString());

            System.out.format("RemoveTail: %s\n", list.removeTail().toString());
            System.out.format("RemoveTail: %s\n", list.removeTail().toString());
        } catch (EmptyListException ex) {
            System.out.println("The list is empty, you bastard!");
        }

        System.out.print("List: ");
        for (Object value: list) {
            System.out.print(value.toString());
        }
        System.out.println();

        // Test edge case
        try {
            System.out.format("RemoveHead: %s\n", list.removeHead().toString());
            System.out.format("RemoveHead: %s\n", list.removeHead().toString());
            System.out.format("RemoveHead: %s\n", list.removeHead().toString());
            System.out.format("RemoveHead: %s\n", list.removeHead().toString());
            System.out.format("RemoveHead: %s\n", list.removeHead().toString());

            System.out.println("You should see an empty list exception now");
            System.out.format("RemoveHead: %s\n", list.removeHead().toString());

        } catch (EmptyListException ex) {
            System.out.println("!!! The list is empty, you bastard !!!");
        }


    }

}
