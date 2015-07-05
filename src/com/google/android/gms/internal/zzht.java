package com.google.android.gms.internal;

import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.concurrent.Callable;
import java.util.concurrent.Future;

@zzgi
public class zzht
{
  public static final zza<Void> zzzB = new zza()
  {
    public final Void zzc(InputStream paramAnonymousInputStream)
    {
      return null;
    }
    
    public final Void zzeA()
    {
      return null;
    }
  };
  
  protected HttpURLConnection zzW(String paramString)
  {
    return (HttpURLConnection)new URL(paramString).openConnection();
  }
  
  public <T> Future<T> zza(final String paramString, final zza<T> paramzza)
  {
    zzhn.submit(new Callable()
    {
      public T call()
      {
        Object localObject4 = null;
        localObject1 = null;
        localObject2 = null;
        try
        {
          HttpURLConnection localHttpURLConnection = zzW(paramString);
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
            Object localObject5 = paramzza.zzb(localHttpURLConnection.getInputStream());
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
        return (T)paramzza.zzdQ();
      }
    });
  }
  
  public static abstract interface zza<T>
  {
    public abstract T zzb(InputStream paramInputStream);
    
    public abstract T zzdQ();
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.zzht
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */