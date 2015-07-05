package com.google.android.gms.internal;

public abstract class zzws<M extends zzws<M>>
  extends zzwy
{
  protected zzwu zzaHB;
  
  public final <T> T zza(zzwt<M, T> paramzzwt)
  {
    if (zzaHB == null) {}
    zzwv localzzwv;
    do
    {
      return null;
      localzzwv = zzaHB.zziE(zzxb.zziI(tag));
    } while (localzzwv == null);
    return (T)localzzwv.zzb(paramzzwt);
  }
  
  public void zza(zzwr paramzzwr)
  {
    if (zzaHB == null) {}
    for (;;)
    {
      return;
      int i = 0;
      while (i < zzaHB.size())
      {
        zzaHB.zziF(i).zza(paramzzwr);
        i += 1;
      }
    }
  }
  
  protected final boolean zza(zzwq paramzzwq, int paramInt)
  {
    int i = paramzzwq.getPosition();
    if (!paramzzwq.zzin(paramInt)) {
      return false;
    }
    int j = zzxb.zziI(paramInt);
    zzxa localzzxa = new zzxa(paramInt, paramzzwq.zzx(i, paramzzwq.getPosition() - i));
    paramzzwq = null;
    if (zzaHB == null) {
      zzaHB = new zzwu();
    }
    for (;;)
    {
      Object localObject = paramzzwq;
      if (paramzzwq == null)
      {
        localObject = new zzwv();
        zzaHB.zza(j, (zzwv)localObject);
      }
      ((zzwv)localObject).zza(localzzxa);
      return true;
      paramzzwq = zzaHB.zziE(j);
    }
  }
  
  protected final boolean zza(M paramM)
  {
    if ((zzaHB == null) || (zzaHB.isEmpty())) {
      return (zzaHB == null) || (zzaHB.isEmpty());
    }
    return zzaHB.equals(zzaHB);
  }
  
  protected int zzc()
  {
    int j = 0;
    if (zzaHB != null)
    {
      int i = 0;
      for (;;)
      {
        k = i;
        if (j >= zzaHB.size()) {
          break;
        }
        i += zzaHB.zziF(j).zzc();
        j += 1;
      }
    }
    int k = 0;
    return k;
  }
  
  protected final int zzvL()
  {
    if ((zzaHB == null) || (zzaHB.isEmpty())) {
      return 0;
    }
    return zzaHB.hashCode();
  }
  
  public M zzvM()
  {
    zzws localzzws = (zzws)super.zzvN();
    zzww.zza(this, localzzws);
    return localzzws;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.zzws
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */