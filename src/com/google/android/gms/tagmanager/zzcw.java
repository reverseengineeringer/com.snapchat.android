package com.google.android.gms.tagmanager;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Build;
import android.os.Build.VERSION;
import java.io.IOException;
import java.io.InputStream;
import java.net.MalformedURLException;
import java.net.URI;
import java.net.URISyntaxException;
import java.net.URL;
import java.util.List;
import java.util.Locale;
import org.apache.http.HttpEntity;
import org.apache.http.HttpEntityEnclosingRequest;
import org.apache.http.HttpHost;
import org.apache.http.HttpRequest;
import org.apache.http.HttpResponse;
import org.apache.http.StatusLine;
import org.apache.http.client.ClientProtocolException;
import org.apache.http.client.HttpClient;
import org.apache.http.message.BasicHttpEntityEnclosingRequest;

class zzcw
  implements zzab
{
  private final String zzaAM;
  private final HttpClient zzaAN;
  private zza zzaAO;
  private final Context zzaAv;
  
  zzcw(HttpClient paramHttpClient, Context paramContext, zza paramzza)
  {
    zzaAv = paramContext.getApplicationContext();
    zzaAM = zza("GoogleTagManager", "4.00", Build.VERSION.RELEASE, zzc(Locale.getDefault()), Build.MODEL, Build.ID);
    zzaAN = paramHttpClient;
    zzaAO = paramzza;
  }
  
  private HttpEntityEnclosingRequest zza(URL paramURL)
  {
    try
    {
      paramURL = new BasicHttpEntityEnclosingRequest("GET", paramURL.toURI().toString());
      zzbf.zzac("Exception sending hit: " + localURISyntaxException1.getClass().getSimpleName());
    }
    catch (URISyntaxException localURISyntaxException1)
    {
      try
      {
        paramURL.addHeader("User-Agent", zzaAM);
        return paramURL;
      }
      catch (URISyntaxException localURISyntaxException2)
      {
        for (;;) {}
      }
      localURISyntaxException1 = localURISyntaxException1;
      paramURL = null;
    }
    zzbf.zzac(localURISyntaxException1.getMessage());
    return paramURL;
  }
  
  private void zza(HttpEntityEnclosingRequest paramHttpEntityEnclosingRequest)
  {
    StringBuffer localStringBuffer = new StringBuffer();
    Object localObject = paramHttpEntityEnclosingRequest.getAllHeaders();
    int j = localObject.length;
    int i = 0;
    while (i < j)
    {
      localStringBuffer.append(localObject[i].toString()).append("\n");
      i += 1;
    }
    localStringBuffer.append(paramHttpEntityEnclosingRequest.getRequestLine().toString()).append("\n");
    if (paramHttpEntityEnclosingRequest.getEntity() != null) {}
    try
    {
      paramHttpEntityEnclosingRequest = paramHttpEntityEnclosingRequest.getEntity().getContent();
      if (paramHttpEntityEnclosingRequest != null)
      {
        i = paramHttpEntityEnclosingRequest.available();
        if (i > 0)
        {
          localObject = new byte[i];
          paramHttpEntityEnclosingRequest.read((byte[])localObject);
          localStringBuffer.append("POST:\n");
          localStringBuffer.append(new String((byte[])localObject)).append("\n");
        }
      }
    }
    catch (IOException paramHttpEntityEnclosingRequest)
    {
      for (;;)
      {
        zzbf.zzab("Error Writing hit to log...");
      }
    }
    zzbf.zzab(localStringBuffer.toString());
  }
  
  static String zzc(Locale paramLocale)
  {
    if (paramLocale == null) {}
    while ((paramLocale.getLanguage() == null) || (paramLocale.getLanguage().length() == 0)) {
      return null;
    }
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append(paramLocale.getLanguage().toLowerCase());
    if ((paramLocale.getCountry() != null) && (paramLocale.getCountry().length() != 0)) {
      localStringBuilder.append("-").append(paramLocale.getCountry().toLowerCase());
    }
    return localStringBuilder.toString();
  }
  
  String zza(String paramString1, String paramString2, String paramString3, String paramString4, String paramString5, String paramString6)
  {
    return String.format("%s/%s (Linux; U; Android %s; %s; %s Build/%s)", new Object[] { paramString1, paramString2, paramString3, paramString4, paramString5, paramString6 });
  }
  
  URL zzd(zzap paramzzap)
  {
    paramzzap = paramzzap.zztk();
    try
    {
      paramzzap = new URL(paramzzap);
      return paramzzap;
    }
    catch (MalformedURLException paramzzap)
    {
      zzbf.zzZ("Error trying to parse the GTM url.");
    }
    return null;
  }
  
  public boolean zzfk()
  {
    NetworkInfo localNetworkInfo = ((ConnectivityManager)zzaAv.getSystemService("connectivity")).getActiveNetworkInfo();
    if ((localNetworkInfo == null) || (!localNetworkInfo.isConnected()))
    {
      zzbf.zzab("...no network connectivity");
      return false;
    }
    return true;
  }
  
  public void zzt(List<zzap> paramList)
  {
    int n = Math.min(paramList.size(), 40);
    int i = 1;
    int m = 0;
    if (m < n)
    {
      zzap localzzap = (zzap)paramList.get(m);
      Object localObject2 = zzd(localzzap);
      if (localObject2 == null)
      {
        zzbf.zzac("No destination: discarding hit.");
        zzaAO.zzb(localzzap);
      }
      for (;;)
      {
        m += 1;
        break;
        Object localObject1 = zza((URL)localObject2);
        if (localObject1 == null)
        {
          zzaAO.zzb(localzzap);
        }
        else
        {
          localObject2 = new HttpHost(((URL)localObject2).getHost(), ((URL)localObject2).getPort(), ((URL)localObject2).getProtocol());
          ((HttpEntityEnclosingRequest)localObject1).addHeader("Host", ((HttpHost)localObject2).toHostString());
          zza((HttpEntityEnclosingRequest)localObject1);
          int j = i;
          int k;
          if (i != 0) {
            k = i;
          }
          try
          {
            zzbk.zzan(zzaAv);
            j = 0;
            k = j;
            i = j;
            localObject1 = zzaAN.execute((HttpHost)localObject2, (HttpRequest)localObject1);
            k = j;
            i = j;
            int i1 = ((HttpResponse)localObject1).getStatusLine().getStatusCode();
            k = j;
            i = j;
            localObject2 = ((HttpResponse)localObject1).getEntity();
            if (localObject2 != null)
            {
              k = j;
              i = j;
              ((HttpEntity)localObject2).consumeContent();
            }
            if (i1 != 200)
            {
              k = j;
              i = j;
              zzbf.zzac("Bad response: " + ((HttpResponse)localObject1).getStatusLine().getStatusCode());
              k = j;
              i = j;
              zzaAO.zzc(localzzap);
              i = j;
            }
            else
            {
              k = j;
              i = j;
              zzaAO.zza(localzzap);
              i = j;
            }
          }
          catch (ClientProtocolException localClientProtocolException)
          {
            zzbf.zzac("ClientProtocolException sending hit; discarding hit...");
            zzaAO.zzb(localzzap);
            i = k;
          }
          catch (IOException localIOException)
          {
            zzbf.zzac("Exception sending hit: " + localIOException.getClass().getSimpleName());
            zzbf.zzac(localIOException.getMessage());
            zzaAO.zzc(localzzap);
          }
        }
      }
    }
  }
  
  public static abstract interface zza
  {
    public abstract void zza(zzap paramzzap);
    
    public abstract void zzb(zzap paramzzap);
    
    public abstract void zzc(zzap paramzzap);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.tagmanager.zzcw
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */