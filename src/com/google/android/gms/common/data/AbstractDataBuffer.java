package com.google.android.gms.common.data;

import android.os.Bundle;
import java.util.Iterator;

public abstract class AbstractDataBuffer<T>
  implements DataBuffer<T>
{
  public final DataHolder zzMd;
  
  public AbstractDataBuffer(DataHolder paramDataHolder)
  {
    zzMd = paramDataHolder;
    if (zzMd != null) {
      zzMd.zzg(this);
    }
  }
  
  @Deprecated
  public final void close()
  {
    release();
  }
  
  public abstract T get(int paramInt);
  
  public int getCount()
  {
    if (zzMd == null) {
      return 0;
    }
    return zzMd.getCount();
  }
  
  @Deprecated
  public boolean isClosed()
  {
    return (zzMd == null) || (zzMd.isClosed());
  }
  
  public Iterator<T> iterator()
  {
    return new zzc(this);
  }
  
  public void release()
  {
    if (zzMd != null) {
      zzMd.close();
    }
  }
  
  public Iterator<T> singleRefIterator()
  {
    return new zzh(this);
  }
  
  public Bundle zziu()
  {
    return zzMd.zziu();
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.common.data.AbstractDataBuffer
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */