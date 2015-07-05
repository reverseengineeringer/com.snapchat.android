package com.google.android.gms.internal;

import java.io.IOException;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.util.concurrent.Callable;

class zzht$2
  implements Callable<T>
{
  zzht$2(zzht paramzzht, String paramString, zzht.zza paramzza) {}
  
  public T call()
  {
    Object localObject4 = null;
    localObject1 = null;
    localObject2 = null;
    try
    {
      HttpURLConnection localHttpURLConnection = zzzE.zzW(zzzC);
      localObject2 = localHttpURLConnection;
      localObject4 = localHttpURLConnection;
      localObject1 = localHttpURLConnection;
      localHttpURLConnection.connect();
      localObject2 = localHttpURLConnection;
      localObject4 = localHttpURLConnection;
      localObject1 = localHttpURLConnection;
      int i = localHttpURLConnection.getResponseCode();
      if ((i >= 200) && (i <= 299))
      {
        localObject2 = localHttpURLConnection;
        localObject4 = localHttpURLConnection;
        localObject1 = localHttpURLConnection;
        Object localObject5 = zzzD.zzb(localHttpURLConnection.getInputStream());
        if (localHttpURLConnection != null) {
          localHttpURLConnection.disconnect();
        }
        return (T)localObject5;
      }
      if (localHttpURLConnection != null) {
        localHttpURLConnection.disconnect();
      }
    }
    catch (MalformedURLException localMalformedURLException)
    {
      for (;;)
      {
        localObject1 = localObject2;
        zzhx.zzd("Error making HTTP request.", localMalformedURLException);
        if (localObject2 != null) {
          ((HttpURLConnection)localObject2).disconnect();
        }
      }
    }
    catch (IOException localIOException)
    {
      for (;;)
      {
        localObject1 = localMalformedURLException;
        zzhx.zzd("Error making HTTP request.", localIOException);
        if (localMalformedURLException != null) {
          localMalformedURLException.disconnect();
        }
      }
    }
    finally
    {
      if (localObject1 == null) {
        break label178;
      }
      ((HttpURLConnection)localObject1).disconnect();
    }
    return (T)zzzD.zzdQ();
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.zzht.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */