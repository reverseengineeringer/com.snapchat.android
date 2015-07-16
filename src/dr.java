import java.util.Arrays;
import java.util.Iterator;
import java.util.Set;
import javax.annotation.Nullable;

@cd
public abstract class dr<E>
  extends dj<E>
  implements Set<E>
{
  @cf
  private static int a(int paramInt)
  {
    int j;
    if (paramInt < 751619276)
    {
      int i = Integer.highestOneBit(paramInt - 1) << 1;
      for (;;)
      {
        j = i;
        if (i * 0.7D >= paramInt) {
          break;
        }
        i <<= 1;
      }
    }
    if (paramInt < 1073741824) {}
    for (boolean bool = true;; bool = false)
    {
      co.a(bool, "collection too large");
      j = 1073741824;
      return j;
    }
  }
  
  private static <E> dr<E> a(int paramInt, Object... paramVarArgs)
  {
    int j = paramInt;
    int n;
    Object[] arrayOfObject;
    int i1;
    int k;
    int i;
    label50:
    Object localObject1;
    int m;
    label81:
    Object localObject2;
    switch (j)
    {
    default: 
      n = a(j);
      arrayOfObject = new Object[n];
      i1 = n - 1;
      k = 0;
      paramInt = 0;
      i = 0;
      if (k < j)
      {
        localObject1 = dw.a(paramVarArgs[k], k);
        int i2 = localObject1.hashCode();
        m = dh.a(i2);
        int i3 = m & i1;
        localObject2 = arrayOfObject[i3];
        if (localObject2 == null)
        {
          m = paramInt + 1;
          paramVarArgs[paramInt] = localObject1;
          arrayOfObject[i3] = localObject1;
          i += i2;
          paramInt = m;
        }
      }
      break;
    }
    for (;;)
    {
      k += 1;
      break label50;
      return db.a;
      return a(paramVarArgs[0]);
      if (!localObject2.equals(localObject1))
      {
        m += 1;
        break label81;
        Arrays.fill(paramVarArgs, paramInt, j, null);
        if (paramInt == 1) {
          return new ee(paramVarArgs[0], i);
        }
        if (n != a(paramInt))
        {
          j = paramInt;
          break;
        }
        localObject1 = paramVarArgs;
        if (paramInt < paramVarArgs.length) {
          localObject1 = dw.b(paramVarArgs, paramInt);
        }
        return new eb((Object[])localObject1, i, arrayOfObject, i1);
      }
    }
  }
  
  public static <E> dr<E> a(E paramE)
  {
    return new ee(paramE);
  }
  
  public static <E> dr<E> a(E paramE1, E paramE2)
  {
    return a(2, new Object[] { paramE1, paramE2 });
  }
  
  public static <E> dr<E> a(E paramE1, E paramE2, E paramE3, E paramE4)
  {
    return a(4, new Object[] { paramE1, paramE2, paramE3, paramE4 });
  }
  
  public static <E> dr<E> a(E paramE1, E paramE2, E paramE3, E paramE4, E paramE5)
  {
    return a(5, new Object[] { paramE1, paramE2, paramE3, paramE4, paramE5 });
  }
  
  public static <E> dr<E> a(E paramE1, E paramE2, E paramE3, E paramE4, E paramE5, E paramE6, E... paramVarArgs)
  {
    Object[] arrayOfObject = new Object[paramVarArgs.length + 6];
    arrayOfObject[0] = paramE1;
    arrayOfObject[1] = paramE2;
    arrayOfObject[2] = paramE3;
    arrayOfObject[3] = paramE4;
    arrayOfObject[4] = paramE5;
    arrayOfObject[5] = paramE6;
    System.arraycopy(paramVarArgs, 0, arrayOfObject, 6, paramVarArgs.length);
    return a(arrayOfObject.length, arrayOfObject);
  }
  
  public abstract ef<E> a();
  
  boolean c()
  {
    return false;
  }
  
  public boolean equals(@Nullable Object paramObject)
  {
    if (paramObject == this) {
      return true;
    }
    if (((paramObject instanceof dr)) && (c()) && (((dr)paramObject).c()) && (hashCode() != paramObject.hashCode())) {
      return false;
    }
    return ec.a(this, paramObject);
  }
  
  public int hashCode()
  {
    Iterator localIterator = iterator();
    int i = 0;
    if (localIterator.hasNext())
    {
      Object localObject = localIterator.next();
      if (localObject != null) {}
      for (int j = localObject.hashCode();; j = 0)
      {
        i = i + j ^ 0xFFFFFFFF ^ 0xFFFFFFFF;
        break;
      }
    }
    return i;
  }
}

/* Location:
 * Qualified Name:     dr
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */