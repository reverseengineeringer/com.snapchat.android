package android.support.v4.util;

public final class CircularArray<E>
{
  private int mCapacityBitmask;
  private E[] mElements;
  private int mHead;
  private int mTail;
  
  public CircularArray()
  {
    this((byte)0);
  }
  
  private CircularArray(byte paramByte)
  {
    if (Integer.bitCount(8) != 1) {
      paramByte = 1 << Integer.highestOneBit(8) + 1;
    }
    mCapacityBitmask = (paramByte - 1);
    mElements = ((Object[])new Object[paramByte]);
  }
  
  private void addFirst(E paramE)
  {
    mHead = (mHead - 1 & mCapacityBitmask);
    mElements[mHead] = paramE;
    if (mHead == mTail) {
      doubleCapacity();
    }
  }
  
  private void addLast(E paramE)
  {
    mElements[mTail] = paramE;
    mTail = (mTail + 1 & mCapacityBitmask);
    if (mTail == mHead) {
      doubleCapacity();
    }
  }
  
  private void doubleCapacity()
  {
    int i = mElements.length;
    int j = i - mHead;
    int k = i << 1;
    if (k < 0) {
      throw new RuntimeException("Too big");
    }
    Object[] arrayOfObject = new Object[k];
    System.arraycopy(mElements, mHead, arrayOfObject, 0, j);
    System.arraycopy(mElements, 0, arrayOfObject, j, mHead);
    mElements = ((Object[])arrayOfObject);
    mHead = 0;
    mTail = i;
    mCapacityBitmask = (k - 1);
  }
  
  private E get(int paramInt)
  {
    if ((paramInt < 0) || (paramInt >= (mTail - mHead & mCapacityBitmask))) {
      throw new ArrayIndexOutOfBoundsException();
    }
    int i = mHead;
    int j = mCapacityBitmask;
    return (E)mElements[(i + paramInt & j)];
  }
  
  private E getFirst()
  {
    if (mHead == mTail) {
      throw new ArrayIndexOutOfBoundsException();
    }
    return (E)mElements[mHead];
  }
  
  private E getLast()
  {
    if (mHead == mTail) {
      throw new ArrayIndexOutOfBoundsException();
    }
    return (E)mElements[(mTail - 1 & mCapacityBitmask)];
  }
  
  private boolean isEmpty()
  {
    return mHead == mTail;
  }
  
  private E popFirst()
  {
    if (mHead == mTail) {
      throw new ArrayIndexOutOfBoundsException();
    }
    Object localObject = mElements[mHead];
    mElements[mHead] = null;
    mHead = (mHead + 1 & mCapacityBitmask);
    return (E)localObject;
  }
  
  private E popLast()
  {
    if (mHead == mTail) {
      throw new ArrayIndexOutOfBoundsException();
    }
    int i = mTail - 1 & mCapacityBitmask;
    Object localObject = mElements[i];
    mElements[i] = null;
    mTail = i;
    return (E)localObject;
  }
  
  private int size()
  {
    return mTail - mHead & mCapacityBitmask;
  }
}

/* Location:
 * Qualified Name:     android.support.v4.util.CircularArray
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */