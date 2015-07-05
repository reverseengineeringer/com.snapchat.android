package org.apache.commons.lang3.builder;

import java.lang.reflect.AccessibleObject;
import java.lang.reflect.Field;
import java.lang.reflect.Modifier;
import java.util.Collection;
import java.util.HashSet;
import java.util.Set;
import org.apache.commons.lang3.ArrayUtils;
import org.apache.commons.lang3.tuple.Pair;

public class EqualsBuilder
  implements Builder<Boolean>
{
  private static final ThreadLocal<Set<Pair<IDKey, IDKey>>> REGISTRY = new ThreadLocal();
  private boolean isEquals = true;
  
  static Pair<IDKey, IDKey> getRegisterPair(Object paramObject1, Object paramObject2)
  {
    return Pair.of(new IDKey(paramObject1), new IDKey(paramObject2));
  }
  
  static Set<Pair<IDKey, IDKey>> getRegistry()
  {
    return (Set)REGISTRY.get();
  }
  
  static boolean isRegistered(Object paramObject1, Object paramObject2)
  {
    Set localSet = getRegistry();
    paramObject1 = getRegisterPair(paramObject1, paramObject2);
    paramObject2 = Pair.of(((Pair)paramObject1).getLeft(), ((Pair)paramObject1).getRight());
    return (localSet != null) && ((localSet.contains(paramObject1)) || (localSet.contains(paramObject2)));
  }
  
  private static void reflectionAppend(Object paramObject1, Object paramObject2, Class<?> paramClass, EqualsBuilder paramEqualsBuilder, boolean paramBoolean, String[] paramArrayOfString)
  {
    if (isRegistered(paramObject1, paramObject2)) {
      return;
    }
    try
    {
      register(paramObject1, paramObject2);
      paramClass = paramClass.getDeclaredFields();
      AccessibleObject.setAccessible(paramClass, true);
      int i = 0;
      for (;;)
      {
        if ((i < paramClass.length) && (isEquals))
        {
          Object localObject = paramClass[i];
          if ((!ArrayUtils.contains(paramArrayOfString, ((Field)localObject).getName())) && (((Field)localObject).getName().indexOf('$') == -1) && ((paramBoolean) || (!Modifier.isTransient(((Field)localObject).getModifiers()))))
          {
            boolean bool = Modifier.isStatic(((Field)localObject).getModifiers());
            if (bool) {}
          }
          try
          {
            paramEqualsBuilder.append(((Field)localObject).get(paramObject1), ((Field)localObject).get(paramObject2));
            i += 1;
          }
          catch (IllegalAccessException paramClass)
          {
            throw new InternalError("Unexpected IllegalAccessException");
          }
        }
      }
    }
    finally
    {
      unregister(paramObject1, paramObject2);
    }
  }
  
  public static boolean reflectionEquals(Object paramObject1, Object paramObject2, Collection<String> paramCollection)
  {
    return reflectionEquals(paramObject1, paramObject2, ReflectionToStringBuilder.toNoNullStringArray(paramCollection));
  }
  
  public static boolean reflectionEquals(Object paramObject1, Object paramObject2, boolean paramBoolean)
  {
    return reflectionEquals(paramObject1, paramObject2, paramBoolean, null, new String[0]);
  }
  
  public static boolean reflectionEquals(Object paramObject1, Object paramObject2, boolean paramBoolean, Class<?> paramClass, String... paramVarArgs)
  {
    if (paramObject1 == paramObject2) {
      return true;
    }
    if ((paramObject1 == null) || (paramObject2 == null)) {
      return false;
    }
    Object localObject2 = paramObject1.getClass();
    Object localObject1 = paramObject2.getClass();
    if (((Class)localObject2).isInstance(paramObject2)) {
      if (((Class)localObject1).isInstance(paramObject1)) {
        break label147;
      }
    }
    for (;;)
    {
      localObject2 = new EqualsBuilder();
      try
      {
        if (!((Class)localObject1).isArray()) {
          break label144;
        }
        ((EqualsBuilder)localObject2).append(paramObject1, paramObject2);
        return ((EqualsBuilder)localObject2).isEquals();
      }
      catch (IllegalArgumentException paramObject1)
      {
        return false;
      }
      if (((Class)localObject1).isInstance(paramObject1))
      {
        if (!((Class)localObject2).isInstance(paramObject2)) {
          localObject1 = localObject2;
        }
      }
      else
      {
        return false;
        label144:
        for (;;)
        {
          reflectionAppend(paramObject1, paramObject2, (Class)localObject1, (EqualsBuilder)localObject2, paramBoolean, paramVarArgs);
          if ((((Class)localObject1).getSuperclass() == null) || (localObject1 == paramClass)) {
            break;
          }
          localObject1 = ((Class)localObject1).getSuperclass();
        }
        label147:
        localObject1 = localObject2;
      }
    }
  }
  
  public static boolean reflectionEquals(Object paramObject1, Object paramObject2, String... paramVarArgs)
  {
    return reflectionEquals(paramObject1, paramObject2, false, null, paramVarArgs);
  }
  
  static void register(Object paramObject1, Object paramObject2)
  {
    try
    {
      if (getRegistry() == null) {
        REGISTRY.set(new HashSet());
      }
      getRegistry().add(getRegisterPair(paramObject1, paramObject2));
      return;
    }
    finally {}
  }
  
  static void unregister(Object paramObject1, Object paramObject2)
  {
    Set localSet = getRegistry();
    if (localSet != null)
    {
      localSet.remove(getRegisterPair(paramObject1, paramObject2));
      try
      {
        paramObject1 = getRegistry();
        if ((paramObject1 != null) && (((Set)paramObject1).isEmpty())) {
          REGISTRY.remove();
        }
        return;
      }
      finally {}
    }
  }
  
  public EqualsBuilder append(byte paramByte1, byte paramByte2)
  {
    if (!isEquals) {
      return this;
    }
    if (paramByte1 == paramByte2) {}
    for (boolean bool = true;; bool = false)
    {
      isEquals = bool;
      return this;
    }
  }
  
  public EqualsBuilder append(char paramChar1, char paramChar2)
  {
    if (!isEquals) {
      return this;
    }
    if (paramChar1 == paramChar2) {}
    for (boolean bool = true;; bool = false)
    {
      isEquals = bool;
      return this;
    }
  }
  
  public EqualsBuilder append(double paramDouble1, double paramDouble2)
  {
    if (!isEquals) {
      return this;
    }
    return append(Double.doubleToLongBits(paramDouble1), Double.doubleToLongBits(paramDouble2));
  }
  
  public EqualsBuilder append(float paramFloat1, float paramFloat2)
  {
    if (!isEquals) {
      return this;
    }
    return append(Float.floatToIntBits(paramFloat1), Float.floatToIntBits(paramFloat2));
  }
  
  public EqualsBuilder append(int paramInt1, int paramInt2)
  {
    if (!isEquals) {
      return this;
    }
    if (paramInt1 == paramInt2) {}
    for (boolean bool = true;; bool = false)
    {
      isEquals = bool;
      return this;
    }
  }
  
  public EqualsBuilder append(long paramLong1, long paramLong2)
  {
    if (!isEquals) {
      return this;
    }
    if (paramLong1 == paramLong2) {}
    for (boolean bool = true;; bool = false)
    {
      isEquals = bool;
      return this;
    }
  }
  
  public EqualsBuilder append(Object paramObject1, Object paramObject2)
  {
    if (!isEquals) {}
    while (paramObject1 == paramObject2) {
      return this;
    }
    if ((paramObject1 == null) || (paramObject2 == null))
    {
      setEquals(false);
      return this;
    }
    if (!paramObject1.getClass().isArray())
    {
      isEquals = paramObject1.equals(paramObject2);
      return this;
    }
    if (paramObject1.getClass() != paramObject2.getClass())
    {
      setEquals(false);
      return this;
    }
    if ((paramObject1 instanceof long[]))
    {
      append((long[])paramObject1, (long[])paramObject2);
      return this;
    }
    if ((paramObject1 instanceof int[]))
    {
      append((int[])paramObject1, (int[])paramObject2);
      return this;
    }
    if ((paramObject1 instanceof short[]))
    {
      append((short[])paramObject1, (short[])paramObject2);
      return this;
    }
    if ((paramObject1 instanceof char[]))
    {
      append((char[])paramObject1, (char[])paramObject2);
      return this;
    }
    if ((paramObject1 instanceof byte[]))
    {
      append((byte[])paramObject1, (byte[])paramObject2);
      return this;
    }
    if ((paramObject1 instanceof double[]))
    {
      append((double[])paramObject1, (double[])paramObject2);
      return this;
    }
    if ((paramObject1 instanceof float[]))
    {
      append((float[])paramObject1, (float[])paramObject2);
      return this;
    }
    if ((paramObject1 instanceof boolean[]))
    {
      append((boolean[])paramObject1, (boolean[])paramObject2);
      return this;
    }
    append((Object[])paramObject1, (Object[])paramObject2);
    return this;
  }
  
  public EqualsBuilder append(short paramShort1, short paramShort2)
  {
    if (!isEquals) {
      return this;
    }
    if (paramShort1 == paramShort2) {}
    for (boolean bool = true;; bool = false)
    {
      isEquals = bool;
      return this;
    }
  }
  
  public EqualsBuilder append(boolean paramBoolean1, boolean paramBoolean2)
  {
    if (!isEquals) {
      return this;
    }
    if (paramBoolean1 == paramBoolean2) {}
    for (paramBoolean1 = true;; paramBoolean1 = false)
    {
      isEquals = paramBoolean1;
      return this;
    }
  }
  
  public EqualsBuilder append(byte[] paramArrayOfByte1, byte[] paramArrayOfByte2)
  {
    int i = 0;
    if (!isEquals) {}
    for (;;)
    {
      return this;
      if (paramArrayOfByte1 != paramArrayOfByte2)
      {
        if ((paramArrayOfByte1 == null) || (paramArrayOfByte2 == null))
        {
          setEquals(false);
          return this;
        }
        if (paramArrayOfByte1.length != paramArrayOfByte2.length)
        {
          setEquals(false);
          return this;
        }
        while ((i < paramArrayOfByte1.length) && (isEquals))
        {
          append(paramArrayOfByte1[i], paramArrayOfByte2[i]);
          i += 1;
        }
      }
    }
  }
  
  public EqualsBuilder append(char[] paramArrayOfChar1, char[] paramArrayOfChar2)
  {
    int i = 0;
    if (!isEquals) {}
    for (;;)
    {
      return this;
      if (paramArrayOfChar1 != paramArrayOfChar2)
      {
        if ((paramArrayOfChar1 == null) || (paramArrayOfChar2 == null))
        {
          setEquals(false);
          return this;
        }
        if (paramArrayOfChar1.length != paramArrayOfChar2.length)
        {
          setEquals(false);
          return this;
        }
        while ((i < paramArrayOfChar1.length) && (isEquals))
        {
          append(paramArrayOfChar1[i], paramArrayOfChar2[i]);
          i += 1;
        }
      }
    }
  }
  
  public EqualsBuilder append(double[] paramArrayOfDouble1, double[] paramArrayOfDouble2)
  {
    int i = 0;
    if (!isEquals) {}
    for (;;)
    {
      return this;
      if (paramArrayOfDouble1 != paramArrayOfDouble2)
      {
        if ((paramArrayOfDouble1 == null) || (paramArrayOfDouble2 == null))
        {
          setEquals(false);
          return this;
        }
        if (paramArrayOfDouble1.length != paramArrayOfDouble2.length)
        {
          setEquals(false);
          return this;
        }
        while ((i < paramArrayOfDouble1.length) && (isEquals))
        {
          append(paramArrayOfDouble1[i], paramArrayOfDouble2[i]);
          i += 1;
        }
      }
    }
  }
  
  public EqualsBuilder append(float[] paramArrayOfFloat1, float[] paramArrayOfFloat2)
  {
    int i = 0;
    if (!isEquals) {}
    for (;;)
    {
      return this;
      if (paramArrayOfFloat1 != paramArrayOfFloat2)
      {
        if ((paramArrayOfFloat1 == null) || (paramArrayOfFloat2 == null))
        {
          setEquals(false);
          return this;
        }
        if (paramArrayOfFloat1.length != paramArrayOfFloat2.length)
        {
          setEquals(false);
          return this;
        }
        while ((i < paramArrayOfFloat1.length) && (isEquals))
        {
          append(paramArrayOfFloat1[i], paramArrayOfFloat2[i]);
          i += 1;
        }
      }
    }
  }
  
  public EqualsBuilder append(int[] paramArrayOfInt1, int[] paramArrayOfInt2)
  {
    int i = 0;
    if (!isEquals) {}
    for (;;)
    {
      return this;
      if (paramArrayOfInt1 != paramArrayOfInt2)
      {
        if ((paramArrayOfInt1 == null) || (paramArrayOfInt2 == null))
        {
          setEquals(false);
          return this;
        }
        if (paramArrayOfInt1.length != paramArrayOfInt2.length)
        {
          setEquals(false);
          return this;
        }
        while ((i < paramArrayOfInt1.length) && (isEquals))
        {
          append(paramArrayOfInt1[i], paramArrayOfInt2[i]);
          i += 1;
        }
      }
    }
  }
  
  public EqualsBuilder append(long[] paramArrayOfLong1, long[] paramArrayOfLong2)
  {
    int i = 0;
    if (!isEquals) {}
    for (;;)
    {
      return this;
      if (paramArrayOfLong1 != paramArrayOfLong2)
      {
        if ((paramArrayOfLong1 == null) || (paramArrayOfLong2 == null))
        {
          setEquals(false);
          return this;
        }
        if (paramArrayOfLong1.length != paramArrayOfLong2.length)
        {
          setEquals(false);
          return this;
        }
        while ((i < paramArrayOfLong1.length) && (isEquals))
        {
          append(paramArrayOfLong1[i], paramArrayOfLong2[i]);
          i += 1;
        }
      }
    }
  }
  
  public EqualsBuilder append(Object[] paramArrayOfObject1, Object[] paramArrayOfObject2)
  {
    int i = 0;
    if (!isEquals) {}
    for (;;)
    {
      return this;
      if (paramArrayOfObject1 != paramArrayOfObject2)
      {
        if ((paramArrayOfObject1 == null) || (paramArrayOfObject2 == null))
        {
          setEquals(false);
          return this;
        }
        if (paramArrayOfObject1.length != paramArrayOfObject2.length)
        {
          setEquals(false);
          return this;
        }
        while ((i < paramArrayOfObject1.length) && (isEquals))
        {
          append(paramArrayOfObject1[i], paramArrayOfObject2[i]);
          i += 1;
        }
      }
    }
  }
  
  public EqualsBuilder append(short[] paramArrayOfShort1, short[] paramArrayOfShort2)
  {
    int i = 0;
    if (!isEquals) {}
    for (;;)
    {
      return this;
      if (paramArrayOfShort1 != paramArrayOfShort2)
      {
        if ((paramArrayOfShort1 == null) || (paramArrayOfShort2 == null))
        {
          setEquals(false);
          return this;
        }
        if (paramArrayOfShort1.length != paramArrayOfShort2.length)
        {
          setEquals(false);
          return this;
        }
        while ((i < paramArrayOfShort1.length) && (isEquals))
        {
          append(paramArrayOfShort1[i], paramArrayOfShort2[i]);
          i += 1;
        }
      }
    }
  }
  
  public EqualsBuilder append(boolean[] paramArrayOfBoolean1, boolean[] paramArrayOfBoolean2)
  {
    int i = 0;
    if (!isEquals) {}
    for (;;)
    {
      return this;
      if (paramArrayOfBoolean1 != paramArrayOfBoolean2)
      {
        if ((paramArrayOfBoolean1 == null) || (paramArrayOfBoolean2 == null))
        {
          setEquals(false);
          return this;
        }
        if (paramArrayOfBoolean1.length != paramArrayOfBoolean2.length)
        {
          setEquals(false);
          return this;
        }
        while ((i < paramArrayOfBoolean1.length) && (isEquals))
        {
          append(paramArrayOfBoolean1[i], paramArrayOfBoolean2[i]);
          i += 1;
        }
      }
    }
  }
  
  public EqualsBuilder appendSuper(boolean paramBoolean)
  {
    if (!isEquals) {
      return this;
    }
    isEquals = paramBoolean;
    return this;
  }
  
  public Boolean build()
  {
    return Boolean.valueOf(isEquals());
  }
  
  public boolean isEquals()
  {
    return isEquals;
  }
  
  public void reset()
  {
    isEquals = true;
  }
  
  protected void setEquals(boolean paramBoolean)
  {
    isEquals = paramBoolean;
  }
}

/* Location:
 * Qualified Name:     org.apache.commons.lang3.builder.EqualsBuilder
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */