package com.google.android.gms.internal;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

public abstract class zzao
{
  private static MessageDigest zzoz = null;
  protected Object zznh = new Object();
  
  protected MessageDigest zzby()
  {
    for (;;)
    {
      MessageDigest localMessageDigest;
      int i;
      synchronized (zznh)
      {
        if (zzoz != null)
        {
          localMessageDigest = zzoz;
          return localMessageDigest;
        }
        i = 0;
        if (i >= 2) {}
      }
      try
      {
        zzoz = MessageDigest.getInstance("MD5");
        i += 1;
        continue;
        localMessageDigest = zzoz;
        return localMessageDigest;
        localObject2 = finally;
        throw ((Throwable)localObject2);
      }
      catch (NoSuchAlgorithmException localNoSuchAlgorithmException)
      {
        for (;;) {}
      }
    }
  }
  
  abstract byte[] zzl(String paramString);
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.zzao
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */