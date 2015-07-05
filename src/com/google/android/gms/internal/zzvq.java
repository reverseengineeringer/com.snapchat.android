package com.google.android.gms.internal;

import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.URL;

class zzvq
  implements zzvr
{
  private HttpURLConnection zzaCF;
  
  private InputStream zza(HttpURLConnection paramHttpURLConnection)
  {
    int i = paramHttpURLConnection.getResponseCode();
    if (i == 200) {
      return paramHttpURLConnection.getInputStream();
    }
    paramHttpURLConnection = "Bad response: " + i;
    if (i == 404) {
      throw new FileNotFoundException(paramHttpURLConnection);
    }
    throw new IOException(paramHttpURLConnection);
  }
  
  private void zzb(HttpURLConnection paramHttpURLConnection)
  {
    if (paramHttpURLConnection != null) {
      paramHttpURLConnection.disconnect();
    }
  }
  
  public void close()
  {
    zzb(zzaCF);
  }
  
  public InputStream zzdG(String paramString)
  {
    zzaCF = zzdH(paramString);
    return zza(zzaCF);
  }
  
  HttpURLConnection zzdH(String paramString)
  {
    paramString = (HttpURLConnection)new URL(paramString).openConnection();
    paramString.setReadTimeout(20000);
    paramString.setConnectTimeout(20000);
    return paramString;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.zzvq
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */