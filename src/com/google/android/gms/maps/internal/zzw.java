package com.google.android.gms.maps.internal;

import android.os.Bundle;
import android.os.Parcelable;

public final class zzw
{
  public static void zza(Bundle paramBundle, String paramString, Parcelable paramParcelable)
  {
    paramBundle.setClassLoader(zzw.class.getClassLoader());
    Bundle localBundle2 = paramBundle.getBundle("map_state");
    Bundle localBundle1 = localBundle2;
    if (localBundle2 == null) {
      localBundle1 = new Bundle();
    }
    localBundle1.setClassLoader(zzw.class.getClassLoader());
    localBundle1.putParcelable(paramString, paramParcelable);
    paramBundle.putBundle("map_state", localBundle1);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.maps.internal.zzw
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */