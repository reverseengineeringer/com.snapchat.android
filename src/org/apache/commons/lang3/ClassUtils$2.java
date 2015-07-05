package org.apache.commons.lang3;

import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.Set;

final class ClassUtils$2
  implements Iterable<Class<?>>
{
  ClassUtils$2(Iterable paramIterable) {}
  
  public final Iterator<Class<?>> iterator()
  {
    final HashSet localHashSet = new HashSet();
    new Iterator()
    {
      Iterator<Class<?>> interfaces = Collections.emptySet().iterator();
      
      private void walkInterfaces(Set<Class<?>> paramAnonymousSet, Class<?> paramAnonymousClass)
      {
        paramAnonymousClass = paramAnonymousClass.getInterfaces();
        int j = paramAnonymousClass.length;
        int i = 0;
        while (i < j)
        {
          Object localObject = paramAnonymousClass[i];
          if (!localHashSet.contains(localObject)) {
            paramAnonymousSet.add(localObject);
          }
          walkInterfaces(paramAnonymousSet, (Class)localObject);
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
          localHashSet.add(localClass);
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
    };
  }
}

/* Location:
 * Qualified Name:     org.apache.commons.lang3.ClassUtils.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */