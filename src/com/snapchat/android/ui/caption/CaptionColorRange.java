package com.snapchat.android.ui.caption;

import android.os.Parcel;
import android.os.Parcelable;

public class CaptionColorRange
  implements Parcelable
{
  final int a;
  final int b;
  final int c;
  
  public CaptionColorRange(int paramInt1, int paramInt2, int paramInt3)
  {
    a = paramInt1;
    b = paramInt2;
    c = paramInt3;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeIntArray(new int[] { a, b, c });
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.ui.caption.CaptionColorRange
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */