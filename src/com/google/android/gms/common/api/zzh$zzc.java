package com.google.android.gms.common.api;

import android.content.IntentSender.SendIntentException;
import android.support.v4.app.FragmentActivity;
import android.support.v4.app.FragmentManager;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.GooglePlayServicesUtil;
import java.util.List;

class zzh$zzc
  implements Runnable
{
  private final int zzND;
  private final ConnectionResult zzNE;
  
  public zzh$zzc(zzh paramzzh, int paramInt, ConnectionResult paramConnectionResult)
  {
    zzND = paramInt;
    zzNE = paramConnectionResult;
  }
  
  public void run()
  {
    if (zzNE.hasResolution()) {
      try
      {
        int i = zzNF.getActivity().mFragments.getFragments().indexOf(zzNF);
        zzNE.startResolutionForResult(zzNF.getActivity(), (i + 1 << 16) + 1);
        return;
      }
      catch (IntentSender.SendIntentException localSendIntentException)
      {
        zzh.zza(zzNF);
        return;
      }
    }
    if (GooglePlayServicesUtil.isUserRecoverableError(zzNE.getErrorCode()))
    {
      GooglePlayServicesUtil.showErrorDialogFragment(zzNE.getErrorCode(), zzNF.getActivity(), zzNF, 2, zzNF);
      return;
    }
    zzh.zza(zzNF, zzND, zzNE);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.common.api.zzh.zzc
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */