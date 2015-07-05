package com.google.android.gms.internal;

import android.os.Parcelable.Creator;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.common.data.zzd;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.common.internal.safeparcel.zzc;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

public abstract class zzqj
  extends zzd
{
  private final String TAG = "SafeDataBufferRef";
  
  public zzqj(DataHolder paramDataHolder, int paramInt)
  {
    super(paramDataHolder, paramInt);
  }
  
  protected int zzC(String paramString, int paramInt)
  {
    int i = paramInt;
    if (zzba(paramString))
    {
      i = paramInt;
      if (!zzbc(paramString)) {
        i = getInteger(paramString);
      }
    }
    return i;
  }
  
  protected float zza(String paramString, float paramFloat)
  {
    float f = paramFloat;
    if (zzba(paramString))
    {
      f = paramFloat;
      if (!zzbc(paramString)) {
        f = getFloat(paramString);
      }
    }
    return f;
  }
  
  protected <E extends SafeParcelable> E zza(String paramString, Parcelable.Creator<E> paramCreator)
  {
    paramString = zzd(paramString, null);
    if (paramString == null) {
      return null;
    }
    return zzc.zza(paramString, paramCreator);
  }
  
  protected <E extends SafeParcelable> List<E> zza(String paramString, Parcelable.Creator<E> paramCreator, List<E> paramList)
  {
    paramString = zzd(paramString, null);
    if (paramString == null) {}
    for (;;)
    {
      return paramList;
      try
      {
        Object localObject = zzwo.zzr(paramString);
        if (zzaHn != null)
        {
          paramString = new ArrayList(zzaHn.length);
          localObject = zzaHn;
          int j = localObject.length;
          int i = 0;
          while (i < j)
          {
            paramString.add(zzc.zza(localObject[i], paramCreator));
            i += 1;
          }
          return paramString;
        }
      }
      catch (zzwx paramString) {}
    }
    return paramList;
  }
  
  protected List<Integer> zza(String paramString, List<Integer> paramList)
  {
    paramString = zzd(paramString, null);
    if (paramString == null) {}
    for (;;)
    {
      return paramList;
      try
      {
        paramString = zzwo.zzr(paramString);
        if (zzaHm != null)
        {
          ArrayList localArrayList = new ArrayList(zzaHm.length);
          int i = 0;
          while (i < zzaHm.length)
          {
            localArrayList.add(Integer.valueOf(zzaHm[i]));
            i += 1;
          }
          return localArrayList;
        }
      }
      catch (zzwx paramString) {}
    }
    return paramList;
  }
  
  protected List<String> zzb(String paramString, List<String> paramList)
  {
    paramString = zzd(paramString, null);
    if (paramString == null) {}
    for (;;)
    {
      return paramList;
      try
      {
        paramString = zzwo.zzr(paramString);
        if (zzaHl != null)
        {
          paramString = Arrays.asList(zzaHl);
          return paramString;
        }
      }
      catch (zzwx paramString) {}
    }
    return paramList;
  }
  
  protected byte[] zzd(String paramString, byte[] paramArrayOfByte)
  {
    byte[] arrayOfByte = paramArrayOfByte;
    if (zzba(paramString))
    {
      arrayOfByte = paramArrayOfByte;
      if (!zzbc(paramString)) {
        arrayOfByte = getByteArray(paramString);
      }
    }
    return arrayOfByte;
  }
  
  protected boolean zzj(String paramString, boolean paramBoolean)
  {
    boolean bool = paramBoolean;
    if (zzba(paramString))
    {
      bool = paramBoolean;
      if (!zzbc(paramString)) {
        bool = getBoolean(paramString);
      }
    }
    return bool;
  }
  
  protected String zzz(String paramString1, String paramString2)
  {
    String str = paramString2;
    if (zzba(paramString1))
    {
      str = paramString2;
      if (!zzbc(paramString1)) {
        str = getString(paramString1);
      }
    }
    return str;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.zzqj
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */