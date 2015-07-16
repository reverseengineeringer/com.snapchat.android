package android.media;

import android.os.Parcel;

public final class SubtitleData
{
  private static final String TAG = "SubtitleData";
  private byte[] mData;
  private long mDurationUs;
  private long mStartTimeUs;
  private int mTrackIndex;
  
  public SubtitleData(Parcel paramParcel)
  {
    if (!parseParcel(paramParcel)) {
      throw new IllegalArgumentException("parseParcel() fails");
    }
  }
  
  private boolean parseParcel(Parcel paramParcel)
  {
    paramParcel.setDataPosition(0);
    if (paramParcel.dataAvail() == 0) {
      return false;
    }
    mTrackIndex = paramParcel.readInt();
    mStartTimeUs = paramParcel.readLong();
    mDurationUs = paramParcel.readLong();
    mData = new byte[paramParcel.readInt()];
    paramParcel.readByteArray(mData);
    return true;
  }
  
  public final byte[] getData()
  {
    return mData;
  }
  
  public final long getDurationUs()
  {
    return mDurationUs;
  }
  
  public final long getStartTimeUs()
  {
    return mStartTimeUs;
  }
  
  public final int getTrackIndex()
  {
    return mTrackIndex;
  }
}

/* Location:
 * Qualified Name:     android.media.SubtitleData
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */