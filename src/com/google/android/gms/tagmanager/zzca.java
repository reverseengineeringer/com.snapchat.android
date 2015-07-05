package com.google.android.gms.tagmanager;

import android.net.Uri;
import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;

class zzca
{
  private static zzca zzazx;
  private volatile String zzaxw;
  private volatile String zzazA;
  private volatile zza zzazy;
  private volatile String zzazz;
  
  zzca()
  {
    clear();
  }
  
  private String zzdf(String paramString)
  {
    return paramString.split("&")[0].split("=")[1];
  }
  
  private String zzm(Uri paramUri)
  {
    return paramUri.getQuery().replace("&gtm_debug=x", "");
  }
  
  static zzca zztx()
  {
    try
    {
      if (zzazx == null) {
        zzazx = new zzca();
      }
      zzca localzzca = zzazx;
      return localzzca;
    }
    finally {}
  }
  
  void clear()
  {
    zzazy = zza.zzazB;
    zzazz = null;
    zzaxw = null;
    zzazA = null;
  }
  
  String getContainerId()
  {
    return zzaxw;
  }
  
  boolean zzl(Uri paramUri)
  {
    boolean bool = true;
    String str;
    try
    {
      str = URLDecoder.decode(paramUri.toString(), "UTF-8");
      if (!str.matches("^tagmanager.c.\\S+:\\/\\/preview\\/p\\?id=\\S+&gtm_auth=\\S+&gtm_preview=\\d+(&gtm_debug=x)?$")) {
        break label147;
      }
      zzbf.zzab("Container preview url: " + str);
      if (!str.matches(".*?&gtm_debug=x$")) {
        break label132;
      }
      zzazy = zza.zzazD;
    }
    catch (UnsupportedEncodingException paramUri)
    {
      for (;;)
      {
        bool = false;
        continue;
        zzazy = zza.zzazC;
      }
    }
    finally {}
    zzazA = zzm(paramUri);
    if ((zzazy == zza.zzazC) || (zzazy == zza.zzazD)) {
      zzazz = ("/r?" + zzazA);
    }
    zzaxw = zzdf(zzazA);
    for (;;)
    {
      return bool;
      label132:
      label147:
      if (str.matches("^tagmanager.c.\\S+:\\/\\/preview\\/p\\?id=\\S+&gtm_preview=$"))
      {
        if (zzdf(paramUri.getQuery()).equals(zzaxw))
        {
          zzbf.zzab("Exit preview mode for container: " + zzaxw);
          zzazy = zza.zzazB;
          zzazz = null;
        }
      }
      else
      {
        zzbf.zzac("Invalid preview uri: " + str);
        bool = false;
        continue;
      }
      bool = false;
    }
  }
  
  zza zzty()
  {
    return zzazy;
  }
  
  String zztz()
  {
    return zzazz;
  }
  
  static enum zza
  {
    private zza() {}
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.tagmanager.zzca
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */