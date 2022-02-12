# mps-smartcasts
Smartcasts is a JetBrains MPS plugin containing an extension to baseLanguage.
This extension contains smart casted variable references, that automatically adopt 
the type of any type checks that are done in de scope of the reference. 
This way a variable can be referenced without having to cast it.
Smartcasts work for normal 'java' types as well as for node-types.
Here are some examples:
```
public void test(Object param, node<> node) { 
  if (param instanceof Integer && param.intValue() > 0) { 
    param.intValue(); // param is smartcasted
  } 
  if (!(param instanceof Integer)) { 
    param.hashCode(); 
  } else { 
    param.intValue(); // param is smartcasted
  } 
  if (node.isInstanceOf(TernaryOperatorExpression)) { 
    node.condition; // node is smartcasted
  } 
  if (node.concept.isExactly(BinaryOperation)) { 
    node.leftExpression; // node is smartcasted
  } 
  if (node.concept.isSubConceptOf(AndExpression)) { 
    node.leftExpression; // node is smartcasted
  } 
}
```
