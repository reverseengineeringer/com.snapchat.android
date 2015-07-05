package com.google.android.gms.common.data;

import java.util.NoSuchElementException;

public class zzh<T>
  extends zzc<T>
{
  private T zzOk;
  
  public zzh(DataBuffer<T> paramDataBuffer)
  {
    super(paramDataBuffer);
  }
  
  public T next()
  {
    if (!hasNext()) {
      throw new NoSuchElementException("Cannot advance the iterator beyond " + zzNO);
    }
    zzNO += 1;
    if (zzNO == 0)
    {
      zzOk = zzNN.get(0);
      if (!(zzOk instanceof zzd)) {
        throw new IllegalStateException("DataBuffer reference of type " + zzOk.getClass() + " is not movable");
      }
    }
    else
    {
      ((zzd)zzOk).zzav(zzNO);
    }
    return (T)zzOk;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.common.data.zzh
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */