package com.google.android.gms.tagmanager;

import android.content.Context;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;

class zzy
  implements zzaq
{
  private static final Object zzaxj = new Object();
  private static zzy zzayy;
  private zzcc zzaxM;
  private String zzayA;
  private zzar zzayB;
  private String zzayz;
  
  private zzy(Context paramContext)
  {
    this(zzas.zzam(paramContext), new zzcr());
  }
  
  zzy(zzar paramzzar, zzcc paramzzcc)
  {
    zzayB = paramzzar;
    zzaxM = paramzzcc;
  }
  
  public static zzaq zzak(Context paramContext)
  {
    synchronized (zzaxj)
    {
      if (zzayy == null) {
        zzayy = new zzy(paramContext);
      }
      paramContext = zzayy;
      return paramContext;
    }
  }
  
  public boolean zzcY(String paramString)
  {
    if (!zzaxM.zzgv())
    {
      zzbf.zzac("Too many urls sent too quickly with the TagManagerSender, rate limiting invoked.");
      return false;
    }
    String str = paramString;
    if (zzayz != null)
    {
      str = paramString;
      if (zzayA == null) {}
    }
    try
    {
      str = zzayz + "?" + zzayA + "=" + URLEncoder.encode(paramString, "UTF-8");
      zzbf.zzab("Sending wrapped url hit: " + str);
      zzayB.zzdb(str);
      return true;
    }
    catch (UnsupportedEncodingException paramString)
    {
      zzbf.zzd("Error wrapping URL for testing.", paramString);
    }
    return false;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.tagmanager.zzy
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */