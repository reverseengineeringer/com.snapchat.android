package com.google.android.gms.internal;

import android.content.Context;
import android.net.Uri;
import android.net.Uri.Builder;
import android.view.MotionEvent;

public class zzk
{
  private String zzkU = "googleads.g.doubleclick.net";
  private String zzkV = "/pagead/ads";
  private String zzkW = "ad.doubleclick.net";
  private String[] zzkX = { ".doubleclick.net", ".googleadservices.com", ".googlesyndication.com" };
  private zzg zzkY;
  
  public zzk(zzg paramzzg)
  {
    zzkY = paramzzg;
  }
  
  private Uri zza(Uri paramUri, Context paramContext, String paramString, boolean paramBoolean)
  {
    boolean bool;
    try
    {
      bool = zza(paramUri);
      if (bool)
      {
        if (!paramUri.toString().contains("dc_ms=")) {
          break label64;
        }
        throw new zzl("Parameter already exists: dc_ms");
      }
    }
    catch (UnsupportedOperationException paramUri)
    {
      throw new zzl("Provided Uri is not in a valid state");
    }
    if (paramUri.getQueryParameter("ms") != null) {
      throw new zzl("Query parameter already exists: ms");
    }
    label64:
    if (paramBoolean) {}
    for (paramContext = zzkY.zza(paramContext, paramString); bool; paramContext = zzkY.zza(paramContext)) {
      return zzb(paramUri, "dc_ms", paramContext);
    }
    paramUri = zza(paramUri, "ms", paramContext);
    return paramUri;
  }
  
  private Uri zza(Uri paramUri, String paramString1, String paramString2)
  {
    String str = paramUri.toString();
    int j = str.indexOf("&adurl");
    int i = j;
    if (j == -1) {
      i = str.indexOf("?adurl");
    }
    if (i != -1) {
      return Uri.parse(str.substring(0, i + 1) + paramString1 + "=" + paramString2 + "&" + str.substring(i + 1));
    }
    return paramUri.buildUpon().appendQueryParameter(paramString1, paramString2).build();
  }
  
  private Uri zzb(Uri paramUri, String paramString1, String paramString2)
  {
    String str = paramUri.toString();
    int i = str.indexOf(";adurl");
    if (i != -1) {
      return Uri.parse(str.substring(0, i + 1) + paramString1 + "=" + paramString2 + ";" + str.substring(i + 1));
    }
    paramUri = paramUri.getEncodedPath();
    i = str.indexOf(paramUri);
    return Uri.parse(str.substring(0, paramUri.length() + i) + ";" + paramString1 + "=" + paramString2 + ";" + str.substring(paramUri.length() + i));
  }
  
  public zzg zzC()
  {
    return zzkY;
  }
  
  public Uri zza(Uri paramUri, Context paramContext)
  {
    try
    {
      paramUri = zza(paramUri, paramContext, paramUri.getQueryParameter("ai"), true);
      return paramUri;
    }
    catch (UnsupportedOperationException paramUri)
    {
      throw new zzl("Provided Uri is not in a valid state");
    }
  }
  
  public void zza(MotionEvent paramMotionEvent)
  {
    zzkY.zza(paramMotionEvent);
  }
  
  public boolean zza(Uri paramUri)
  {
    if (paramUri == null) {
      throw new NullPointerException();
    }
    try
    {
      boolean bool = paramUri.getHost().equals(zzkW);
      return bool;
    }
    catch (NullPointerException paramUri) {}
    return false;
  }
  
  public boolean zzb(Uri paramUri)
  {
    boolean bool2 = false;
    if (paramUri == null) {
      throw new NullPointerException();
    }
    try
    {
      paramUri = paramUri.getHost();
      String[] arrayOfString = zzkX;
      int j = arrayOfString.length;
      int i = 0;
      for (;;)
      {
        boolean bool1 = bool2;
        if (i < j)
        {
          bool1 = paramUri.endsWith(arrayOfString[i]);
          if (bool1) {
            bool1 = true;
          }
        }
        else
        {
          return bool1;
        }
        i += 1;
      }
      return false;
    }
    catch (NullPointerException paramUri) {}
  }
  
  public boolean zzc(Uri paramUri)
  {
    return (zzb(paramUri)) && (paramUri.getPath().endsWith("/aclk"));
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.zzk
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */