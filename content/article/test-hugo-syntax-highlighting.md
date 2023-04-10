---
title: "Test Hugo Built-in Syntax Highlighting"
date: 2023-04-05T08:07:01-04:00

categories: ["Syntax Highlighting"]
tags: ["linenos", "hl_lines"]
toc: false
author: "Igor"
---

Test article post with blocks of Go and Java code highlighted via Hugo's built-in Chroma (monokai).

<!--more-->

Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed dapibus justo quis dui dictum, pretium tincidunt elit
lacinia. Proin ultricies massa ex, et laoreet tortor condimentum id.

### linenos=false
```go {linenos=false}
package main

import "fmt"

func main() {
    fmt.Println("Hello, World!")
}
```

#### linenos=inline
```go {linenos=inline}
package main

import "fmt"

func main() {
    fmt.Println("Hello, World!")
}
```

#### linenos=true
```go {linenos=true}
package main

import "fmt"

func main() {
    fmt.Println("Hello, World!")
}
```

#### linenos=table
```go {linenos=table}
package main

import "fmt"

func main() {
    fmt.Println("Hello, World!")
}
```

#### linenos=inline, hl_lines="7-12 21-26"
```java {linenos=inline, hl_lines="7-12 21-26"}
class CalculatorTest {
  Calculator calculator = new Calculator();
  Integer op1;
  Integer op2;
  Integer result;

  @BeforeEach
  void setUp() {
    op1 = null;
    op2 = null;
    result = null;
  }

  @Nested
  class Multiply {
    @BeforeEach
    void setUp() {
      // executes before each test within this nested class
    }

    @Test
    void twoPositiveOperands_correctPositiveResult() {
      given_twoOperands(6, 3);
      when_multiply();
      then_assertResult(18);
    }

    private void when_multiply() {
      result = calculator.multiply(op1, op2);
    }
  }

  @Nested
  class Divide {
    @Test
    void secondOperandZero_arithmeticException() {
      given_twoOperands(6, 0);
      when_divide_then_assertExceptionThrown(ArithmeticException.class);
    }

    @Test
    void twoPositiveOperands_correctPositiveResult() {
      given_twoOperands(6, 3);
      when_divide();
      then_assertResult(2);
    }

    private void when_divide() {
      result = calculator.divide(op1, op2);
    }

    private void when_divide_then_assertExceptionThrown(Class<? extends Exception> exception) {
      assertThrows(exception, () -> calculator.divide(op1, op2));
    }
  }

  private void given_twoOperands(int op1, int op2) {
    this.op1 = op1;
    this.op2 = op2;
  }

  private void then_assertResult(int expected) {
    assertThat(result).isEqualTo(expected);
  }
}
```

Pellentesque non est id nulla viverra accumsan. Sed ullamcorper placerat vestibulum. Aliquam erat volutpat. Duis id leo
diam. Aliquam ultrices magna eget vulputate congue. Donec lacus turpis, consectetur at convallis in, malesuada ut
ligula.
