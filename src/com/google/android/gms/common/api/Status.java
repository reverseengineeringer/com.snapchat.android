package com.google.android.gms.common.api;

import android.app.Activity;
import android.app.PendingIntent;
import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.common.internal.zzw;
import com.google.android.gms.common.internal.zzw.zza;

public final class Status
  implements Result, SafeParcelable
{
  public static final StatusCreator CREATOR = new StatusCreator();
  public static final Status zzNo = new Status(0);
  public static final Status zzNp = new Status(14);
  public static final Status zzNq = new Status(8);
  public static final Status zzNr = new Status(15);
  public static final Status zzNs = new Status(16);
  private final PendingIntent mPendingIntent;
  private final int zzFG;
  private final int zzLs;
  private final String zzNt;
  
  public Status(int paramInt)
  {
    this(paramInt, null);
  }
  
  Status(int paramInt1, int paramInt2, String paramString, PendingIntent paramPendingIntent)
  {
    zzFG = paramInt1;
    zzLs = paramInt2;
    zzNt = paramString;
    mPendingIntent = paramPendingIntent;
  }
  
  public Status(int paramInt, String paramString)
  {
    this(1, paramInt, paramString, null);
  }
  
  public Status(int paramInt, String paramString, PendingIntent paramPendingIntent)
  {
    this(1, paramInt, paramString, paramPendingIntent);
  }
  
  private String zzhK()
  {
    if (zzNt != null) {
      return zzNt;
    }
    return CommonStatusCodes.getStatusCodeString(zzLs);
  }
  
  public final int describeContents()
  {
    return 0;
  }
  
  public final boolean equals(Object paramObject)
  {
    if (!(paramObject instanceof Status)) {}
    do
    {
      return false;
      paramObject = (Status)paramObject;
    } while ((zzFG != zzFG) || (zzLs != zzLs) || (!zzw.equal(zzNt, zzNt)) || (!zzw.equal(mPendingIntent, mPendingIntent)));
    return true;
  }
  
  public final PendingIntent getResolution()
  {
    return mPendingIntent;
  }
  
  public final Status getStatus()
  {
    return this;
  }
  
  public final int getStatusCode()
  {
    return zzLs;
  }
  
  public final String getStatusMessage()
  {
    return zzNt;
  }
  
  final int getVersionCode()
  {
    return zzFG;
  }
  
  public final boolean hasResolution()
  {
    return mPendingIntent != null;
  }
  
  public final int hashCode()
  {
    return zzw.hashCode(new Object[] { Integer.valueOf(zzFG), Integer.valueOf(zzLs), zzNt, mPendingIntent });
  }
  
  public final boolean isCanceled()
  {
    return zzLs == 16;
  }
  
  public final boolean isInterrupted()
  {
    return zzLs == 14;
  }
  
  public final boolean isSuccess()
  {
    return zzLs <= 0;
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
    StatusCreator.zza(this, paramParcel, paramInt);
  }
  
  final PendingIntent zzip()
  {
    return mPendingIntent;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.common.api.Status
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */