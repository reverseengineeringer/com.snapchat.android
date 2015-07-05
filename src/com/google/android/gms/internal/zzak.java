package com.google.android.gms.internal;

import java.util.ArrayList;
import java.util.Iterator;

@zzgi
public class zzak
{
  private final int zznW;
  private final int zznX;
  private final int zznY;
  private final zzap zznZ;
  private final Object zznh = new Object();
  private ArrayList<String> zzoa = new ArrayList();
  private int zzob = 0;
  private int zzoc = 0;
  private int zzod = 0;
  private int zzoe;
  private String zzof = "";
  
  public zzak(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    zznW = paramInt1;
    zznX = paramInt2;
    zznY = paramInt3;
    zznZ = new zzap(paramInt4);
  }
  
  private String zza(ArrayList<String> paramArrayList, int paramInt)
  {
    if (paramArrayList.isEmpty()) {
      paramArrayList = "";
    }
    Object localObject;
    do
    {
      return paramArrayList;
      localObject = new StringBuffer();
      paramArrayList = paramArrayList.iterator();
      do
      {
        if (!paramArrayList.hasNext()) {
          break;
        }
        ((StringBuffer)localObject).append((String)paramArrayList.next());
        ((StringBuffer)localObject).append(' ');
      } while (((StringBuffer)localObject).length() <= paramInt);
      ((StringBuffer)localObject).deleteCharAt(((StringBuffer)localObject).length() - 1);
      localObject = ((StringBuffer)localObject).toString();
      paramArrayList = (ArrayList<String>)localObject;
    } while (((String)localObject).length() < paramInt);
    return ((String)localObject).substring(0, paramInt);
  }
  
  private void zzj(String paramString)
  {
    if ((paramString == null) || (paramString.length() < zznY)) {
      return;
    }
    synchronized (zznh)
    {
      zzoa.add(paramString);
      zzob += paramString.length();
      return;
    }
  }
  
  public boolean equals(Object paramObject)
  {
    if (!(paramObject instanceof zzak)) {}
    do
    {
      return false;
      if (paramObject == this) {
        return true;
      }
      paramObject = (zzak)paramObject;
    } while ((((zzak)paramObject).zzbm() == null) || (!((zzak)paramObject).zzbm().equals(zzbm())));
    return true;
  }
  
  public int getScore()
  {
    return zzoe;
  }
  
  public int hashCode()
  {
    return zzbm().hashCode();
  }
  
  public String toString()
  {
    return "ActivityContent fetchId: " + zzoc + " score:" + zzoe + " total_length:" + zzob + "\n text: " + zza(zzoa, 200) + "\n signture: " + zzof;
  }
  
  int zza(int paramInt1, int paramInt2)
  {
    return zznW * paramInt1 + zznX * paramInt2;
  }
  
  public boolean zzbl()
  {
    for (;;)
    {
      synchronized (zznh)
      {
        if (zzod == 0)
        {
          bool = true;
          return bool;
        }
      }
      boolean bool = false;
    }
  }
  
  public String zzbm()
  {
    return zzof;
  }
  
  public void zzbn()
  {
    synchronized (zznh)
    {
      zzoe -= 100;
      return;
    }
  }
  
  public void zzbo()
  {
    synchronized (zznh)
    {
      zzod -= 1;
      return;
    }
  }
  
  public void zzbp()
  {
    synchronized (zznh)
    {
      zzod += 1;
      return;
    }
  }
  
  public void zzbq()
  {
    synchronized (zznh)
    {
      int i = zza(zzob, zzoc);
      if (i > zzoe)
      {
        zzoe = i;
        zzof = zznZ.zza(zzoa);
      }
      return;
    }
  }
  
  int zzbr()
  {
    return zzob;
  }
  
  public void zzc(int paramInt)
  {
    zzoc = paramInt;
  }
  
  public void zzh(String arg1)
  {
    zzj(???);
    synchronized (zznh)
    {
      if (zzod < 0) {
        zzhx.zzY("ActivityContent: negative number of WebViews.");
      }
      zzbq();
      return;
    }
  }
  
  public void zzi(String paramString)
  {
    zzj(paramString);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.zzak
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */