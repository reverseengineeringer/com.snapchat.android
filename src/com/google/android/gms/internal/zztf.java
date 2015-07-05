package com.google.android.gms.internal;

import android.os.Bundle;
import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import java.util.Iterator;
import java.util.Set;

public class zztf
  implements SafeParcelable
{
  public static final zzth CREATOR = new zzth();
  public final String tag;
  public final int versionCode;
  public final long zzatM;
  public final byte[] zzatN;
  public final Bundle zzatO;
  
  zztf(int paramInt, long paramLong, String paramString, byte[] paramArrayOfByte, Bundle paramBundle)
  {
    versionCode = paramInt;
    zzatM = paramLong;
    tag = paramString;
    zzatN = paramArrayOfByte;
    zzatO = paramBundle;
  }
  
  public zztf(long paramLong, String paramString, byte[] paramArrayOfByte, String... paramVarArgs)
  {
    versionCode = 1;
    zzatM = paramLong;
    tag = paramString;
    zzatN = paramArrayOfByte;
    zzatO = zze(paramVarArgs);
  }
  
  private static Bundle zze(String... paramVarArgs)
  {
    Object localObject = null;
    if (paramVarArgs == null) {}
    int j;
    do
    {
      return (Bundle)localObject;
      if (paramVarArgs.length % 2 != 0) {
        throw new IllegalArgumentException("extras must have an even number of elements");
      }
      j = paramVarArgs.length / 2;
    } while (j == 0);
    Bundle localBundle = new Bundle(j);
    int i = 0;
    for (;;)
    {
      localObject = localBundle;
      if (i >= j) {
        break;
      }
      localBundle.putString(paramVarArgs[(i * 2)], paramVarArgs[(i * 2 + 1)]);
      i += 1;
    }
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("tag=").append(tag).append(",");
    localStringBuilder.append("eventTime=").append(zzatM).append(",");
    if ((zzatO != null) && (!zzatO.isEmpty()))
    {
      localStringBuilder.append("keyValues=");
      Iterator localIterator = zzatO.keySet().iterator();
      while (localIterator.hasNext())
      {
        String str = (String)localIterator.next();
        localStringBuilder.append("(").append(str).append(",");
        localStringBuilder.append(zzatO.getString(str)).append(")");
        localStringBuilder.append(" ");
      }
    }
    return localStringBuilder.toString();
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    zzth.zza(this, paramParcel, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.zztf
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */