package com.google.android.gms.internal;

import android.app.DownloadManager;
import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;

class zzed$1
  implements DialogInterface.OnClickListener
{
  zzed$1(zzed paramzzed, String paramString1, String paramString2) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    paramDialogInterface = (DownloadManager)zzed.zza(zztz).getSystemService("download");
    try
    {
      paramDialogInterface.enqueue(zztz.zzf(zztx, zzty));
      return;
    }
    catch (IllegalStateException paramDialogInterface)
    {
      zztz.zzH("Could not store picture.");
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.zzed.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */