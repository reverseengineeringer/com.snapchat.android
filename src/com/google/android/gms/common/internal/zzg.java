package com.google.android.gms.common.internal;

import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import android.support.v4.app.Fragment;

public class zzg
  implements DialogInterface.OnClickListener
{
  private final Intent mIntent;
  private final Fragment zzPt;
  private final int zzPu;
  private final Activity zzoi;
  
  public zzg(Activity paramActivity, Intent paramIntent, int paramInt)
  {
    zzoi = paramActivity;
    zzPt = null;
    mIntent = paramIntent;
    zzPu = paramInt;
  }
  
  public zzg(Fragment paramFragment, Intent paramIntent, int paramInt)
  {
    zzoi = null;
    zzPt = paramFragment;
    mIntent = paramIntent;
    zzPu = paramInt;
  }
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    try
    {
      if ((mIntent != null) && (zzPt != null)) {
        zzPt.startActivityForResult(mIntent, zzPu);
      }
      for (;;)
      {
        paramDialogInterface.dismiss();
        return;
        if (mIntent != null) {
          zzoi.startActivityForResult(mIntent, zzPu);
        }
      }
      return;
    }
    catch (ActivityNotFoundException paramDialogInterface) {}
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.common.internal.zzg
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */