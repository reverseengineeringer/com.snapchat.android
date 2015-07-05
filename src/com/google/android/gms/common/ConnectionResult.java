package com.google.android.gms.common;

import android.app.Activity;
import android.app.PendingIntent;
import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.common.internal.zzw;
import com.google.android.gms.common.internal.zzw.zza;

public final class ConnectionResult
  implements SafeParcelable
{
  public static final int API_UNAVAILABLE = 16;
  public static final int CANCELED = 13;
  public static final ConnectionResultCreator CREATOR = new ConnectionResultCreator();
  public static final int DEVELOPER_ERROR = 10;
  @Deprecated
  public static final int DRIVE_EXTERNAL_STORAGE_REQUIRED = 1500;
  public static final int INTERNAL_ERROR = 8;
  public static final int INTERRUPTED = 15;
  public static final int INVALID_ACCOUNT = 5;
  public static final int LICENSE_CHECK_FAILED = 11;
  public static final int NETWORK_ERROR = 7;
  public static final int RESOLUTION_REQUIRED = 6;
  public static final int SERVICE_DISABLED = 3;
  public static final int SERVICE_INVALID = 9;
  public static final int SERVICE_MISSING = 1;
  public static final int SERVICE_VERSION_UPDATE_REQUIRED = 2;
  public static final int SIGN_IN_FAILED = 17;
  public static final int SIGN_IN_REQUIRED = 4;
  public static final int SUCCESS = 0;
  public static final int TIMEOUT = 14;
  public static final ConnectionResult zzLr = new ConnectionResult(0, null);
  private final PendingIntent mPendingIntent;
  final int zzFG;
  private final int zzLs;
  
  ConnectionResult(int paramInt1, int paramInt2, PendingIntent paramPendingIntent)
  {
    zzFG = paramInt1;
    zzLs = paramInt2;
    mPendingIntent = paramPendingIntent;
  }
  
  public ConnectionResult(int paramInt, PendingIntent paramPendingIntent)
  {
    this(1, paramInt, paramPendingIntent);
  }
  
  private String zzhK()
  {
    switch (zzLs)
    {
    case 12: 
    default: 
      return "unknown status code " + zzLs;
    case 0: 
      return "SUCCESS";
    case 1: 
      return "SERVICE_MISSING";
    case 2: 
      return "SERVICE_VERSION_UPDATE_REQUIRED";
    case 3: 
      return "SERVICE_DISABLED";
    case 4: 
      return "SIGN_IN_REQUIRED";
    case 5: 
      return "INVALID_ACCOUNT";
    case 6: 
      return "RESOLUTION_REQUIRED";
    case 7: 
      return "NETWORK_ERROR";
    case 8: 
      return "INTERNAL_ERROR";
    case 9: 
      return "SERVICE_INVALID";
    case 10: 
      return "DEVELOPER_ERROR";
    case 11: 
      return "LICENSE_CHECK_FAILED";
    case 13: 
      return "CANCELED";
    case 14: 
      return "TIMEOUT";
    case 15: 
      return "INTERRUPTED";
    case 16: 
      return "API_UNAVAILABLE";
    }
    return "SIGN_IN_FAILED";
  }
  
  public final int describeContents()
  {
    return 0;
  }
  
  public final boolean equals(Object paramObject)
  {
    if (paramObject == this) {}
    do
    {
      return true;
      if (!(paramObject instanceof ConnectionResult)) {
        return false;
      }
      paramObject = (ConnectionResult)paramObject;
    } while ((zzLs == zzLs) && (zzw.equal(mPendingIntent, mPendingIntent)));
    return false;
  }
  
  public final int getErrorCode()
  {
    return zzLs;
  }
  
  public final PendingIntent getResolution()
  {
    return mPendingIntent;
  }
  
  public final boolean hasResolution()
  {
    return (zzLs != 0) && (mPendingIntent != null);
  }
  
  public final int hashCode()
  {
    return zzw.hashCode(new Object[] { Integer.valueOf(zzLs), mPendingIntent });
  }
  
  public final boolean isSuccess()
  {
    return zzLs == 0;
  }
  
  public final void startResolutionForResult(Activity paramActivity, int paramInt)
  {
    if (!hasResolution()) {
      return;
    }
    paramActivity.startIntentSenderForResult(mPendingIntent.getIntentSender(), paramInt, null, 0, 0, 0);
  }
  
  public final String toString()
  {
    return zzw.zzk(this).zza("statusCode", zzhK()).zza("resolution", mPendingIntent).toString();
  }
  
  public final void writeToParcel(Parcel paramParcel, int paramInt)
  {
    ConnectionResultCreator.zza(this, paramParcel, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.common.ConnectionResult
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */