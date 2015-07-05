package com.google.android.gms.internal;

import android.util.Base64OutputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Comparator;
import java.util.Iterator;
import java.util.Locale;
import java.util.PriorityQueue;

public class zzap
{
  private final int zzoA;
  private final int zzoB;
  private final int zzoC;
  private final zzao zzoD = new zzar();
  
  public zzap(int paramInt)
  {
    zzoB = paramInt;
    zzoA = 6;
    zzoC = 0;
  }
  
  private String zzm(String paramString)
  {
    String[] arrayOfString = paramString.split("\n");
    if (arrayOfString.length == 0) {
      return "";
    }
    paramString = zzbz();
    Arrays.sort(arrayOfString, new Comparator()
    {
      public int compare(String paramAnonymousString1, String paramAnonymousString2)
      {
        return paramAnonymousString2.length() - paramAnonymousString1.length();
      }
    });
    int i = 0;
    for (;;)
    {
      if ((i < arrayOfString.length) && (i < zzoB))
      {
        if (arrayOfString[i].trim().length() != 0) {}
        try
        {
          paramString.write(zzoD.zzl(arrayOfString[i]));
          i += 1;
        }
        catch (IOException localIOException)
        {
          zzhx.zzb("Error while writing hash to byteStream", localIOException);
        }
      }
    }
    return paramString.toString();
  }
  
  public String zza(ArrayList<String> paramArrayList)
  {
    StringBuffer localStringBuffer = new StringBuffer();
    paramArrayList = paramArrayList.iterator();
    while (paramArrayList.hasNext())
    {
      localStringBuffer.append(((String)paramArrayList.next()).toLowerCase(Locale.US));
      localStringBuffer.append('\n');
    }
    switch (zzoC)
    {
    default: 
      return "";
    case 0: 
      return zzn(localStringBuffer.toString());
    }
    return zzm(localStringBuffer.toString());
  }
  
  zza zzbz()
  {
    return new zza();
  }
  
  String zzn(String paramString)
  {
    Object localObject1 = paramString.split("\n");
    if (localObject1.length == 0) {
      return "";
    }
    paramString = zzbz();
    Object localObject2 = new PriorityQueue(zzoB, new Comparator()
    {
      public int zza(zzas.zza paramAnonymouszza1, zzas.zza paramAnonymouszza2)
      {
        return (int)(value - value);
      }
    });
    int i = 0;
    while (i < localObject1.length)
    {
      String[] arrayOfString = zzaq.zzp(localObject1[i]);
      if (arrayOfString.length >= zzoA) {
        zzas.zza(arrayOfString, zzoB, zzoA, (PriorityQueue)localObject2);
      }
      i += 1;
    }
    localObject1 = ((PriorityQueue)localObject2).iterator();
    for (;;)
    {
      if (((Iterator)localObject1).hasNext())
      {
        localObject2 = (zzas.zza)((Iterator)localObject1).next();
        try
        {
          paramString.write(zzoD.zzl(zzoI));
        }
        catch (IOException localIOException)
        {
          zzhx.zzb("Error while writing hash to byteStream", localIOException);
        }
      }
    }
    return paramString.toString();
  }
  
  static class zza
  {
    ByteArrayOutputStream zzoF = new ByteArrayOutputStream(4096);
    Base64OutputStream zzoG = new Base64OutputStream(zzoF, 10);
    
    public String toString()
    {
      try
      {
        zzoG.close();
      }
      catch (IOException localIOException1)
      {
        for (;;)
        {
          try
          {
            zzoF.close();
            String str = zzoF.toString();
            return str;
          }
          catch (IOException localIOException2)
          {
            zzhx.zzb("HashManager: Unable to convert to Base64.", localIOException2);
            return "";
          }
          finally
          {
            zzoF = null;
            zzoG = null;
          }
          localIOException1 = localIOException1;
          zzhx.zzb("HashManager: Unable to convert to Base64.", localIOException1);
        }
      }
    }
    
    public void write(byte[] paramArrayOfByte)
    {
      zzoG.write(paramArrayOfByte);
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.zzap
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */