package android.support.v4.app;

import android.os.Parcel;
import android.os.Parcelable.Creator;

final class BackStackState$1
  implements Parcelable.Creator<BackStackState>
{
  private static BackStackState createFromParcel(Parcel paramParcel)
  {
    return new BackStackState(paramParcel);
  }
  
  private static BackStackState[] newArray(int paramInt)
  {
    return new BackStackState[paramInt];
  }
}

/* Location:
 * Qualified Name:     android.support.v4.app.BackStackState.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */