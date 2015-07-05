package com.google.android.gms.common.data;

import com.google.android.gms.common.internal.zzx;
import java.util.Iterator;
import java.util.NoSuchElementException;

public class zzc<T>
  implements Iterator<T>
{
  protected final DataBuffer<T> zzNN;
  protected int zzNO;
  
  public zzc(DataBuffer<T> paramDataBuffer)
  {
    zzNN = ((DataBuffer)zzx.zzl(paramDataBuffer));
    zzNO = -1;
  }
  
  public boolean hasNext()
  {
    return zzNO < zzNN.getCount() - 1;
  }
  
  public T next()
  {
    if (!hasNext()) {
      throw new NoSuchElementException("Cannot advance the iterator beyond " + zzNO);
    }
    DataBuffer localDataBuffer = zzNN;
    int i = zzNO + 1;
    zzNO = i;
    return (T)localDataBuffer.get(i);
  }
  
  public void remove()
  {
    throw new UnsupportedOperationException("Cannot remove elements from a DataBufferIterator");
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.common.data.zzc
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */