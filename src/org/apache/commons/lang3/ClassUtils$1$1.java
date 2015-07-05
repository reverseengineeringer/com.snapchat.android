package org.apache.commons.lang3;

import java.util.Iterator;
import org.apache.commons.lang3.mutable.MutableObject;

class ClassUtils$1$1
  implements Iterator<Class<?>>
{
  ClassUtils$1$1(ClassUtils.1 param1, MutableObject paramMutableObject) {}
  
  public boolean hasNext()
  {
    return val$next.getValue() != null;
  }
  
  public Class<?> next()
  {
    Class localClass = (Class)val$next.getValue();
    val$next.setValue(localClass.getSuperclass());
    return localClass;
  }
  
  public void remove()
  {
    throw new UnsupportedOperationException();
  }
}

/* Location:
 * Qualified Name:     org.apache.commons.lang3.ClassUtils.1.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */