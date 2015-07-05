package org.apache.commons.lang3;

import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.Set;

class ClassUtils$2$1
  implements Iterator<Class<?>>
{
  Iterator<Class<?>> interfaces = Collections.emptySet().iterator();
  
  ClassUtils$2$1(ClassUtils.2 param2, Iterator paramIterator, Set paramSet) {}
  
  private void walkInterfaces(Set<Class<?>> paramSet, Class<?> paramClass)
  {
    paramClass = paramClass.getInterfaces();
    int j = paramClass.length;
    int i = 0;
    while (i < j)
    {
      Object localObject = paramClass[i];
      if (!val$seenInterfaces.contains(localObject)) {
        paramSet.add(localObject);
      }
      walkInterfaces(paramSet, (Class)localObject);
      i += 1;
    }
  }
  
  public boolean hasNext()
  {
    return (interfaces.hasNext()) || (val$wrapped.hasNext());
  }
  
  public Class<?> next()
  {
    if (interfaces.hasNext())
    {
      localClass = (Class)interfaces.next();
      val$seenInterfaces.add(localClass);
      return localClass;
    }
    Class localClass = (Class)val$wrapped.next();
    LinkedHashSet localLinkedHashSet = new LinkedHashSet();
    walkInterfaces(localLinkedHashSet, localClass);
    interfaces = localLinkedHashSet.iterator();
    return localClass;
  }
  
  public void remove()
  {
    throw new UnsupportedOperationException();
  }
}

/* Location:
 * Qualified Name:     org.apache.commons.lang3.ClassUtils.2.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */