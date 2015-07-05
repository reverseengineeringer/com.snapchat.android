package com.snapchat.videotranscoder.mp4;

import cgb;
import com.snapchat.videotranscoder.utils.Debug;

public class SnapSegments
{
  private long[] mSegmentTimesMs;
  private String mSegmentTimesMsString = null;
  
  public SnapSegments(@cgb String paramString)
  {
    mSegmentTimesMs = parseSegmentTimes(paramString);
    validateSegmentTimes(mSegmentTimesMs);
  }
  
  public SnapSegments(@cgb long[] paramArrayOfLong)
  {
    mSegmentTimesMs = paramArrayOfLong;
    validateSegmentTimes(mSegmentTimesMs);
  }
  
  private String generateSegmentTimesString()
  {
    boolean bool = false;
    StringBuilder localStringBuilder = new StringBuilder();
    int i = 0;
    while (i < mSegmentTimesMs.length - 1)
    {
      localStringBuilder.append(mSegmentTimesMs[i]);
      localStringBuilder.append(",");
      i += 1;
    }
    if (mSegmentTimesMs.length > 0) {
      bool = true;
    }
    Debug.assertTrue(bool);
    localStringBuilder.append(mSegmentTimesMs[(mSegmentTimesMs.length - 1)]);
    return localStringBuilder.toString();
  }
  
  private long[] parseSegmentTimes(@cgb String paramString)
  {
    paramString = paramString.split(",");
    if (paramString.length <= 0) {
      throw new IllegalArgumentException("Must contain at least one segment.");
    }
    long[] arrayOfLong = new long[paramString.length];
    int i = 0;
    while (i < paramString.length) {
      try
      {
        arrayOfLong[i] = Long.parseLong(paramString[i]);
        i += 1;
      }
      catch (NumberFormatException paramString)
      {
        throw new IllegalArgumentException("Segment times are not formatted correctly.", paramString);
      }
    }
    return arrayOfLong;
  }
  
  private void validateSegmentTimes(@cgb long[] paramArrayOfLong)
  {
    if (paramArrayOfLong.length == 0) {
      throw new IllegalArgumentException("No segment times");
    }
    long l1 = 0L;
    int j = paramArrayOfLong.length;
    int i = 0;
    while (i < j)
    {
      long l2 = paramArrayOfLong[i];
      if (l2 < l1) {
        throw new IllegalArgumentException("Segment times are not in correct order");
      }
      i += 1;
      l1 = l2;
    }
  }
  
  public long[] getSegmentTimesMs()
  {
    return mSegmentTimesMs;
  }
  
  public String toString()
  {
    if (mSegmentTimesMsString == null) {
      mSegmentTimesMsString = generateSegmentTimesString();
    }
    return mSegmentTimesMsString;
  }
}

/* Location:
 * Qualified Name:     com.snapchat.videotranscoder.mp4.SnapSegments
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */