package com.google.android.gms.internal;

import com.google.android.gms.common.internal.zzx;
import java.util.ArrayList;

public class zztg
{
  private final ArrayList<zza> zzatP = new ArrayList();
  private int zzatQ;
  
  public zztg()
  {
    this(100);
  }
  
  public zztg(int paramInt)
  {
    zzatQ = paramInt;
  }
  
  private void zzrH()
  {
    while (getSize() > getCapacity()) {
      zzatP.remove(0);
    }
  }
  
  public void clear()
  {
    zzatP.clear();
  }
  
  public int getCapacity()
  {
    return zzatQ;
  }
  
  public int getSize()
  {
    return zzatP.size();
  }
  
  public boolean isEmpty()
  {
    return zzatP.isEmpty();
  }
  
  public void zza(zztj paramzztj, zztf paramzztf)
  {
    zzatP.add(new zza(paramzztj, paramzztf, null));
    zzrH();
  }
  
  public ArrayList<zza> zzrG()
  {
    return zzatP;
  }
  
  public static class zza
  {
    public final zztj zzatR;
    public final zztf zzatS;
    public final zzxf.zzd zzatT;
    
    private zza(zztj paramzztj, zztf paramzztf)
    {
      zzatR = ((zztj)zzx.zzl(paramzztj));
      zzatS = ((zztf)zzx.zzl(paramzztf));
      zzatT = null;
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.zztg
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */