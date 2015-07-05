package android.support.v4.media.session;

import android.os.Parcel;
import android.os.Parcelable.Creator;

final class PlaybackStateCompat$1
  implements Parcelable.Creator<PlaybackStateCompat>
{
  private static PlaybackStateCompat createFromParcel(Parcel paramParcel)
  {
    return new PlaybackStateCompat(paramParcel, (byte)0);
  }
  
  private static PlaybackStateCompat[] newArray(int paramInt)
  {
    return new PlaybackStateCompat[paramInt];
  }
}

/* Location:
 * Qualified Name:     android.support.v4.media.session.PlaybackStateCompat.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */