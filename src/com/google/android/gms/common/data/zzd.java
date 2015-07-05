package com.google.android.gms.common.data;

import android.database.CharArrayBuffer;
import android.net.Uri;
import com.google.android.gms.common.internal.zzw;
import com.google.android.gms.common.internal.zzx;

public abstract class zzd
{
  public final DataHolder zzMd;
  public int zzNQ;
  private int zzNR;
  
  public zzd(DataHolder paramDataHolder, int paramInt)
  {
    zzMd = ((DataHolder)zzx.zzl(paramDataHolder));
    zzav(paramInt);
  }
  
  public boolean equals(Object paramObject)
  {
    boolean bool2 = false;
    boolean bool1 = bool2;
    if ((paramObject instanceof zzd))
    {
      paramObject = (zzd)paramObject;
      bool1 = bool2;
      if (zzw.equal(Integer.valueOf(zzNQ), Integer.valueOf(zzNQ)))
      {
        bool1 = bool2;
        if (zzw.equal(Integer.valueOf(zzNR), Integer.valueOf(zzNR)))
        {
          bool1 = bool2;
          if (zzMd == zzMd) {
            bool1 = true;
          }
        }
      }
    }
    return bool1;
  }
  
  public boolean getBoolean(String paramString)
  {
    return zzMd.zzd(paramString, zzNQ, zzNR);
  }
  
  public byte[] getByteArray(String paramString)
  {
    return zzMd.zzf(paramString, zzNQ, zzNR);
  }
  
  public float getFloat(String paramString)
  {
    return zzMd.zze(paramString, zzNQ, zzNR);
  }
  
  public int getInteger(String paramString)
  {
    return zzMd.zzb(paramString, zzNQ, zzNR);
  }
  
  protected long getLong(String paramString)
  {
    return zzMd.zza(paramString, zzNQ, zzNR);
  }
  
  public String getString(String paramString)
  {
    return zzMd.zzc(paramString, zzNQ, zzNR);
  }
  
  public int hashCode()
  {
    return zzw.hashCode(new Object[] { Integer.valueOf(zzNQ), Integer.valueOf(zzNR), zzMd });
  }
  
  public boolean isDataValid()
  {
    return !zzMd.isClosed();
  }
  
  protected void zza(String paramString, CharArrayBuffer paramCharArrayBuffer)
  {
    zzMd.zza(paramString, zzNQ, zzNR, paramCharArrayBuffer);
  }
  
  protected void zzav(int paramInt)
  {
    if ((paramInt >= 0) && (paramInt < zzMd.getCount())) {}
    for (boolean bool = true;; bool = false)
    {
      zzx.zzN(bool);
      zzNQ = paramInt;
      zzNR = zzMd.zzax(zzNQ);
      return;
    }
  }
  
  public boolean zzba(String paramString)
  {
    return zzMd.zzba(paramString);
  }
  
  protected Uri zzbb(String paramString)
  {
    return zzMd.zzg(paramString, zzNQ, zzNR);
  }
  
  public boolean zzbc(String paramString)
  {
    return zzMd.zzh(paramString, zzNQ, zzNR);
  }
  
  protected int zzix()
  {
    return zzNQ;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.common.data.zzd
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */