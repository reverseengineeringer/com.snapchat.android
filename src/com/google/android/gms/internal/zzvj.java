package com.google.android.gms.internal;

import com.google.android.gms.common.internal.zzx;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class zzvj
{
  private final List<zzve> zzaBY = new ArrayList();
  
  public String getId()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    Iterator localIterator = zzaBY.iterator();
    int i = 1;
    if (localIterator.hasNext())
    {
      zzve localzzve = (zzve)localIterator.next();
      if (i != 0) {
        i = 0;
      }
      for (;;)
      {
        localStringBuilder.append(localzzve.getContainerId());
        break;
        localStringBuilder.append("#");
      }
    }
    return localStringBuilder.toString();
  }
  
  public zzvj zzb(zzve paramzzve)
  {
    zzx.zzl(paramzzve);
    Iterator localIterator = zzaBY.iterator();
    while (localIterator.hasNext()) {
      if (((zzve)localIterator.next()).getContainerId().equals(paramzzve.getContainerId())) {
        throw new IllegalArgumentException("The container is already being requested. " + paramzzve.getContainerId());
      }
    }
    zzaBY.add(paramzzve);
    return this;
  }
  
  public List<zzve> zzun()
  {
    return zzaBY;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.zzvj
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */