# Calculator Implementation using JFlex and CUP

This project implements a simple calculator using JFlex for lexical analysis and CUP for syntactic analysis in Java.

## Directory Structure

Create the following directory structure:
```
calculator-project/
├── build/
├── lib/
│   ├── java-cup-11b.jar
│   └── java-cup-11b-runtime.jar
├── src/
│   └── calculator/
│       ├── lexer.flex
│       └── parser.cup
├── tools/
│   ├── jflex-1.9.1.jar
│   └── java-cup-11b.jar
└── build.xml
```

## Setup Steps

1. Create the directories as shown above.

2. Download the required libraries:
   - JFlex: Download from [https://www.jflex.de/download.html](https://www.jflex.de/download.html)
   - JavaCUP: Download from [http://www2.cs.tum.edu/projects/cup/](http://www2.cs.tum.edu/projects/cup/)

3. Place the JAR files in the appropriate directories:
   - `jflex-1.9.1.jar` → `tools/`
   - `java-cup-11b.jar` → `tools/` and `lib/`
   - `java-cup-11b-runtime.jar` → `lib/`

4. Create the source files:
   - Create `src/calculator/lexer.flex` with the JFlex specification
   - Create `src/calculator/parser.cup` with the CUP specification
   - Create `src/calculator/Calculator.java` with the main class
   - Create `build.xml` with the Ant build script

5. Build and run the project using Apache Ant:
   ```
   ant run
   ```

## Usage

Once the calculator is running, you can enter expressions like:
```
2 + 3 * 4;
```

Each expression should end with a semicolon (;). The calculator will display the result after each expression.

To exit the calculator, press Ctrl+D (Unix) or Ctrl+Z followed by Enter (Windows).

## Features

The calculator supports:
- Basic arithmetic operations: +, -, *, /
- Parentheses for grouping expressions
- Negative numbers (unary minus)
- Integer and decimal numbers
- Multiple expressions in a single session