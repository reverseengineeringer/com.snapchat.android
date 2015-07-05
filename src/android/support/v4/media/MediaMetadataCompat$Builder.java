package android.support.v4.media;

import android.graphics.Bitmap;
import android.os.Bundle;
import android.support.v4.util.ArrayMap;

public final class MediaMetadataCompat$Builder
{
  final Bundle mBundle;
  
  public MediaMetadataCompat$Builder()
  {
    mBundle = new Bundle();
  }
  
  private MediaMetadataCompat$Builder(MediaMetadataCompat paramMediaMetadataCompat)
  {
    mBundle = new Bundle(MediaMetadataCompat.access$100(paramMediaMetadataCompat));
  }
  
  private MediaMetadataCompat build()
  {
    return new MediaMetadataCompat(mBundle, (byte)0);
  }
  
  private Builder putBitmap(String paramString, Bitmap paramBitmap)
  {
    if ((MediaMetadataCompat.access$200().containsKey(paramString)) && (((Integer)MediaMetadataCompat.access$200().get(paramString)).intValue() != 2)) {
      throw new IllegalArgumentException("The " + paramString + " key cannot be used to put a Bitmap");
    }
    mBundle.putParcelable(paramString, paramBitmap);
    return this;
  }
  
  private Builder putLong(String paramString, long paramLong)
  {
    if ((MediaMetadataCompat.access$200().containsKey(paramString)) && (((Integer)MediaMetadataCompat.access$200().get(paramString)).intValue() != 0)) {
      throw new IllegalArgumentException("The " + paramString + " key cannot be used to put a long");
    }
    mBundle.putLong(paramString, paramLong);
    return this;
  }
  
  private Builder putRating(String paramString, RatingCompat paramRatingCompat)
  {
    if ((MediaMetadataCompat.access$200().containsKey(paramString)) && (((Integer)MediaMetadataCompat.access$200().get(paramString)).intValue() != 3)) {
      throw new IllegalArgumentException("The " + paramString + " key cannot be used to put a Rating");
    }
    mBundle.putParcelable(paramString, paramRatingCompat);
    return this;
  }
  
  private Builder putString(String paramString1, String paramString2)
  {
    if ((MediaMetadataCompat.access$200().containsKey(paramString1)) && (((Integer)MediaMetadataCompat.access$200().get(paramString1)).intValue() != 1)) {
      throw new IllegalArgumentException("The " + paramString1 + " key cannot be used to put a String");
    }
    mBundle.putCharSequence(paramString1, paramString2);
    return this;
  }
  
  private Builder putText(String paramString, CharSequence paramCharSequence)
  {
    if ((MediaMetadataCompat.access$200().containsKey(paramString)) && (((Integer)MediaMetadataCompat.access$200().get(paramString)).intValue() != 1)) {
      throw new IllegalArgumentException("The " + paramString + " key cannot be used to put a CharSequence");
    }
    mBundle.putCharSequence(paramString, paramCharSequence);
    return this;
  }
}

/* Location:
 * Qualified Name:     android.support.v4.media.MediaMetadataCompat.Builder
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */