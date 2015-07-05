package android.support.v4.media;

import android.os.Parcel;
import android.os.Parcelable.Creator;

final class RatingCompat$1
  implements Parcelable.Creator<RatingCompat>
{
  private static RatingCompat createFromParcel(Parcel paramParcel)
  {
    return new RatingCompat(paramParcel.readInt(), paramParcel.readFloat(), (byte)0);
  }
  
  private static RatingCompat[] newArray(int paramInt)
  {
    return new RatingCompat[paramInt];
  }
}

/* Location:
 * Qualified Name:     android.support.v4.media.RatingCompat.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */