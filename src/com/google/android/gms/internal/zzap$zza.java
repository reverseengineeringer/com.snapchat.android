package com.google.android.gms.internal;

import android.util.Base64OutputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;

class zzap$zza
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

/* Location:
 * Qualified Name:     com.google.android.gms.internal.zzap.zza
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */