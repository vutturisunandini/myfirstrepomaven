#package com.mycompany.app;

/**
 * Hello world!, Welcome to Devops Training!
 *
 */
#public class App 
#{
#    public static void main( String[] args )
#   {
#       System.out.println( "Hello World!" );
#   }
#}
package com.mycompany.app;

public class App {
    public static void main(String[] args) {
        System.out.println("Hello World!");

        // Keep the application running indefinitely
        while (true) {
            try {
                Thread.sleep(30000);  // Sleep for 10 seconds to simulate a long-running process
            } catch (InterruptedException e) {
                e.printStackTrace();
            }
        }
    }
}

