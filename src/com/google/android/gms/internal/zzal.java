package com.google.android.gms.internal;

import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;

@zzgi
public class zzal
{
  private final Object zznh = new Object();
  private int zzog;
  private List<zzak> zzoh = new LinkedList();
  
  public boolean zza(zzak paramzzak)
  {
    synchronized (zznh)
    {
      return zzoh.contains(paramzzak);
    }
  }
  
  public boolean zzb(zzak paramzzak)
  {
    synchronized (zznh)
    {
      Iterator localIterator = zzoh.iterator();
      while (localIterator.hasNext())
      {
        zzak localzzak = (zzak)localIterator.next();
        if ((paramzzak != localzzak) && (localzzak.zzbm().equals(paramzzak.zzbm())))
        {
          localIterator.remove();
          return true;
        }
      }
      return false;
    }
  }
  
  public zzak zzbs()
  {
    Object localObject1 = null;
    label146:
    label149:
    for (;;)
    {
      synchronized (zznh)
      {
        if (zzoh.size() == 0)
        {
          zzhx.zzY("Queue empty");
          return null;
        }
        if (zzoh.size() >= 2)
        {
          int i = Integer.MIN_VALUE;
          Iterator localIterator = zzoh.iterator();
          if (localIterator.hasNext())
          {
            zzak localzzak2 = (zzak)localIterator.next();
            int j = localzzak2.getScore();
            if (j <= i) {
              break label146;
            }
            localObject1 = localzzak2;
            i = j;
            break label149;
          }
          zzoh.remove(localObject1);
          return (zzak)localObject1;
        }
      }
      zzak localzzak1 = (zzak)zzoh.get(0);
      localzzak1.zzbn();
      return localzzak1;
    }
  }
  
  public void zzc(zzak paramzzak)
  {
    synchronized (zznh)
    {
      if (zzoh.size() >= 10)
      {
        zzhx.zzY("Queue is full, current size = " + zzoh.size());
        zzoh.remove(0);
      }
      int i = zzog;
      zzog = (i + 1);
      paramzzak.zzc(i);
      zzoh.add(paramzzak);
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.zzal
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */