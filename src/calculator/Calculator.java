package calculator;

import java.io.*;

import java_cup.parser;
import java_cup.runtime.*;

public class Calculator {
    public static void main(String[] args) {
        try {
            // Create a lexer for reading from standard input
            Lexer lexer = new Lexer(new InputStreamReader(System.in));
            
            // Create a parser that uses the lexer
            parser p = new parser(lexer);
            
            System.out.println("Calculator started. Enter expressions ending with semicolon (;)");
            System.out.println("Example: 2 + 3 * 4;");
            System.out.println("Press Ctrl+D (Unix) or Ctrl+Z (Windows) followed by Enter to exit");
            
            // Parse the input
            p.parse();
            
        } catch (Exception e) {
            System.err.println("Error: " + e.getMessage());
            e.printStackTrace();
        }
    }
}