package com.google.android.gms.tagmanager;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.os.Build.VERSION;

class zzcu
{
  static void zza(Context paramContext, String paramString1, String paramString2, String paramString3)
  {
    paramContext = paramContext.getSharedPreferences(paramString1, 0).edit();
    paramContext.putString(paramString2, paramString3);
    zza(paramContext);
  }
  
  static void zza(SharedPreferences.Editor paramEditor)
  {
    if (Build.VERSION.SDK_INT >= 9)
    {
      paramEditor.apply();
      return;
    }
    new Thread(new Runnable()
    {
      public final void run()
      {
        zzaAH.commit();
      }
    }).start();
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.tagmanager.zzcu
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */