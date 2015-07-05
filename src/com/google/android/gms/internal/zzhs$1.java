package com.google.android.gms.internal;

import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;

class zzhs$1
  implements DialogInterface.OnClickListener
{
  zzhs$1(zzhs paramzzhs, String paramString) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    zzhs.zza(zzzA).startActivity(Intent.createChooser(new Intent("android.intent.action.SEND").setType("text/plain").putExtra("android.intent.extra.TEXT", zzzz), "Share via"));
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.zzhs.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */