package org.apache.commons.lang3.reflect;

import org.apache.commons.lang3.BooleanUtils;

public class InheritanceUtils
{
  public static int distance(Class<?> paramClass1, Class<?> paramClass2)
  {
    if ((paramClass1 == null) || (paramClass2 == null)) {
      i = -1;
    }
    int j;
    do
    {
      return i;
      if (paramClass1.equals(paramClass2)) {
        return 0;
      }
      paramClass1 = paramClass1.getSuperclass();
      j = BooleanUtils.toInteger(paramClass2.equals(paramClass1));
      i = j;
    } while (j == 1);
    int i = j + distance(paramClass1, paramClass2);
    if (i > 0) {
      return i + 1;
    }
    return -1;
  }
}

/* Location:
 * Qualified Name:     org.apache.commons.lang3.reflect.InheritanceUtils
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */