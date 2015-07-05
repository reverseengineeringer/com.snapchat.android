package android.support.v4.util;

public final class SparseArrayCompat<E>
  implements Cloneable
{
  public static final Object DELETED = new Object();
  public boolean mGarbage = false;
  public int[] mKeys;
  public int mSize;
  public Object[] mValues;
  
  public SparseArrayCompat()
  {
    this((byte)0);
  }
  
  private SparseArrayCompat(byte paramByte)
  {
    paramByte = ContainerHelpers.idealIntArraySize(10);
    mKeys = new int[paramByte];
    mValues = new Object[paramByte];
    mSize = 0;
  }
  
  private void append(int paramInt, E paramE)
  {
    if ((mSize != 0) && (paramInt <= mKeys[(mSize - 1)]))
    {
      put(paramInt, paramE);
      return;
    }
    if ((mGarbage) && (mSize >= mKeys.length)) {
      gc();
    }
    int i = mSize;
    if (i >= mKeys.length)
    {
      int j = ContainerHelpers.idealIntArraySize(i + 1);
      int[] arrayOfInt = new int[j];
      Object[] arrayOfObject = new Object[j];
      System.arraycopy(mKeys, 0, arrayOfInt, 0, mKeys.length);
      System.arraycopy(mValues, 0, arrayOfObject, 0, mValues.length);
      mKeys = arrayOfInt;
      mValues = arrayOfObject;
    }
    mKeys[i] = paramInt;
    mValues[i] = paramE;
    mSize = (i + 1);
  }
  
  private SparseArrayCompat<E> clone()
  {
    try
    {
      SparseArrayCompat localSparseArrayCompat = (SparseArrayCompat)super.clone();
      return localCloneNotSupportedException1;
    }
    catch (CloneNotSupportedException localCloneNotSupportedException1)
    {
      try
      {
        mKeys = ((int[])mKeys.clone());
        mValues = ((Object[])mValues.clone());
        return localSparseArrayCompat;
      }
      catch (CloneNotSupportedException localCloneNotSupportedException2) {}
      localCloneNotSupportedException1 = localCloneNotSupportedException1;
      return null;
    }
  }
  
  private void delete(int paramInt)
  {
    paramInt = ContainerHelpers.binarySearch(mKeys, mSize, paramInt);
    if ((paramInt >= 0) && (mValues[paramInt] != DELETED))
    {
      mValues[paramInt] = DELETED;
      mGarbage = true;
    }
  }
  
  private void gc()
  {
    int m = mSize;
    int[] arrayOfInt = mKeys;
    Object[] arrayOfObject = mValues;
    int i = 0;
    int k;
    for (int j = 0; i < m; j = k)
    {
      Object localObject = arrayOfObject[i];
      k = j;
      if (localObject != DELETED)
      {
        if (i != j)
        {
          arrayOfInt[j] = arrayOfInt[i];
          arrayOfObject[j] = localObject;
          arrayOfObject[i] = null;
        }
        k = j + 1;
      }
      i += 1;
    }
    mGarbage = false;
    mSize = j;
  }
  
  private E get$6ae075e8(int paramInt)
  {
    paramInt = ContainerHelpers.binarySearch(mKeys, mSize, paramInt);
    if ((paramInt < 0) || (mValues[paramInt] == DELETED)) {
      return null;
    }
    return (E)mValues[paramInt];
  }
  
  private int indexOfValue(E paramE)
  {
    if (mGarbage) {
      gc();
    }
    int i = 0;
    while (i < mSize)
    {
      if (mValues[i] == paramE) {
        return i;
      }
      i += 1;
    }
    return -1;
  }
  
  private void remove(int paramInt)
  {
    paramInt = ContainerHelpers.binarySearch(mKeys, mSize, paramInt);
    if ((paramInt >= 0) && (mValues[paramInt] != DELETED))
    {
      mValues[paramInt] = DELETED;
      mGarbage = true;
    }
  }
  
  private void removeAtRange(int paramInt1, int paramInt2)
  {
    paramInt2 = Math.min(mSize, paramInt1 + paramInt2);
    while (paramInt1 < paramInt2)
    {
      removeAt(paramInt1);
      paramInt1 += 1;
    }
  }
  
  private void setValueAt(int paramInt, E paramE)
  {
    if (mGarbage) {
      gc();
    }
    mValues[paramInt] = paramE;
  }
  
  public final void clear()
  {
    int j = mSize;
    Object[] arrayOfObject = mValues;
    int i = 0;
    while (i < j)
    {
      arrayOfObject[i] = null;
      i += 1;
    }
    mSize = 0;
    mGarbage = false;
  }
  
  public final E get(int paramInt)
  {
    paramInt = ContainerHelpers.binarySearch(mKeys, mSize, paramInt);
    if ((paramInt < 0) || (mValues[paramInt] == DELETED)) {
      return null;
    }
    return (E)mValues[paramInt];
  }
  
  public final int indexOfKey(int paramInt)
  {
    if (mGarbage) {
      gc();
    }
    return ContainerHelpers.binarySearch(mKeys, mSize, paramInt);
  }
  
  public final int keyAt(int paramInt)
  {
    if (mGarbage) {
      gc();
    }
    return mKeys[paramInt];
  }
  
  public final void put(int paramInt, E paramE)
  {
    int i = ContainerHelpers.binarySearch(mKeys, mSize, paramInt);
    if (i >= 0)
    {
      mValues[i] = paramE;
      return;
    }
    int j = i ^ 0xFFFFFFFF;
    if ((j < mSize) && (mValues[j] == DELETED))
    {
      mKeys[j] = paramInt;
      mValues[j] = paramE;
      return;
    }
    i = j;
    if (mGarbage)
    {
      i = j;
      if (mSize >= mKeys.length)
      {
        gc();
        i = ContainerHelpers.binarySearch(mKeys, mSize, paramInt) ^ 0xFFFFFFFF;
      }
    }
    if (mSize >= mKeys.length)
    {
      j = ContainerHelpers.idealIntArraySize(mSize + 1);
      int[] arrayOfInt = new int[j];
      Object[] arrayOfObject = new Object[j];
      System.arraycopy(mKeys, 0, arrayOfInt, 0, mKeys.length);
      System.arraycopy(mValues, 0, arrayOfObject, 0, mValues.length);
      mKeys = arrayOfInt;
      mValues = arrayOfObject;
    }
    if (mSize - i != 0)
    {
      System.arraycopy(mKeys, i, mKeys, i + 1, mSize - i);
      System.arraycopy(mValues, i, mValues, i + 1, mSize - i);
    }
    mKeys[i] = paramInt;
    mValues[i] = paramE;
    mSize += 1;
  }
  
  public final void removeAt(int paramInt)
  {
    if (mValues[paramInt] != DELETED)
    {
      mValues[paramInt] = DELETED;
      mGarbage = true;
    }
  }
  
  public final int size()
  {
    if (mGarbage) {
      gc();
    }
    return mSize;
  }
  
  public final String toString()
  {
    if (size() <= 0) {
      return "{}";
    }
    StringBuilder localStringBuilder = new StringBuilder(mSize * 28);
    localStringBuilder.append('{');
    int i = 0;
    if (i < mSize)
    {
      if (i > 0) {
        localStringBuilder.append(", ");
      }
      localStringBuilder.append(keyAt(i));
      localStringBuilder.append('=');
      Object localObject = valueAt(i);
      if (localObject != this) {
        localStringBuilder.append(localObject);
      }
      for (;;)
      {
        i += 1;
        break;
        localStringBuilder.append("(this Map)");
      }
    }
    localStringBuilder.append('}');
    return localStringBuilder.toString();
  }
  
  public final E valueAt(int paramInt)
  {
    if (mGarbage) {
      gc();
    }
    return (E)mValues[paramInt];
  }
}

/* Location:
 * Qualified Name:     android.support.v4.util.SparseArrayCompat
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */