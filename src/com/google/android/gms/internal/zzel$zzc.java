package com.google.android.gms.internal;

import android.content.Context;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.view.ViewParent;

@zzgi
public class zzel$zzc
{
  public final int index;
  public final Context zzlN;
  public final ViewGroup.LayoutParams zzul;
  public final ViewGroup zzum;
  
  public zzel$zzc(zzic paramzzic)
  {
    zzul = paramzzic.getLayoutParams();
    ViewParent localViewParent = paramzzic.getParent();
    zzlN = paramzzic.zzeE();
    if ((localViewParent != null) && ((localViewParent instanceof ViewGroup)))
    {
      zzum = ((ViewGroup)localViewParent);
      index = zzum.indexOfChild(paramzzic.getWebView());
      zzum.removeView(paramzzic.getWebView());
      paramzzic.zzA(true);
      return;
    }
    throw new zzel.zza("Could not get the parent of the WebView for an overlay.");
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.zzel.zzc
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */