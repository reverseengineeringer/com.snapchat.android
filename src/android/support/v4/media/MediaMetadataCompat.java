package android.support.v4.media;

import android.graphics.Bitmap;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import android.support.v4.util.ArrayMap;
import java.util.Iterator;
import java.util.Set;

public final class MediaMetadataCompat
  implements Parcelable
{
  public static final Parcelable.Creator<MediaMetadataCompat> CREATOR = new Parcelable.Creator()
  {
    private static MediaMetadataCompat createFromParcel(Parcel paramAnonymousParcel)
    {
      return new MediaMetadataCompat(paramAnonymousParcel, (byte)0);
    }
    
    private static MediaMetadataCompat[] newArray(int paramAnonymousInt)
    {
      return new MediaMetadataCompat[paramAnonymousInt];
    }
  };
  public static final ArrayMap<String, Integer> METADATA_KEYS_TYPE;
  public static final String METADATA_KEY_ALBUM = "android.media.metadata.ALBUM";
  public static final String METADATA_KEY_ALBUM_ART = "android.media.metadata.ALBUM_ART";
  public static final String METADATA_KEY_ALBUM_ARTIST = "android.media.metadata.ALBUM_ARTIST";
  public static final String METADATA_KEY_ALBUM_ART_URI = "android.media.metadata.ALBUM_ART_URI";
  public static final String METADATA_KEY_ART = "android.media.metadata.ART";
  public static final String METADATA_KEY_ARTIST = "android.media.metadata.ARTIST";
  public static final String METADATA_KEY_ART_URI = "android.media.metadata.ART_URI";
  public static final String METADATA_KEY_AUTHOR = "android.media.metadata.AUTHOR";
  public static final String METADATA_KEY_COMPILATION = "android.media.metadata.COMPILATION";
  public static final String METADATA_KEY_COMPOSER = "android.media.metadata.COMPOSER";
  public static final String METADATA_KEY_DATE = "android.media.metadata.DATE";
  public static final String METADATA_KEY_DISC_NUMBER = "android.media.metadata.DISC_NUMBER";
  public static final String METADATA_KEY_DISPLAY_DESCRIPTION = "android.media.metadata.DISPLAY_DESCRIPTION";
  public static final String METADATA_KEY_DISPLAY_ICON = "android.media.metadata.DISPLAY_ICON";
  public static final String METADATA_KEY_DISPLAY_ICON_URI = "android.media.metadata.DISPLAY_ICON_URI";
  public static final String METADATA_KEY_DISPLAY_SUBTITLE = "android.media.metadata.DISPLAY_SUBTITLE";
  public static final String METADATA_KEY_DISPLAY_TITLE = "android.media.metadata.DISPLAY_TITLE";
  public static final String METADATA_KEY_DURATION = "android.media.metadata.DURATION";
  public static final String METADATA_KEY_GENRE = "android.media.metadata.GENRE";
  public static final String METADATA_KEY_NUM_TRACKS = "android.media.metadata.NUM_TRACKS";
  public static final String METADATA_KEY_RATING = "android.media.metadata.RATING";
  public static final String METADATA_KEY_TITLE = "android.media.metadata.TITLE";
  public static final String METADATA_KEY_TRACK_NUMBER = "android.media.metadata.TRACK_NUMBER";
  public static final String METADATA_KEY_USER_RATING = "android.media.metadata.USER_RATING";
  public static final String METADATA_KEY_WRITER = "android.media.metadata.WRITER";
  public static final String METADATA_KEY_YEAR = "android.media.metadata.YEAR";
  private static final int METADATA_TYPE_BITMAP = 2;
  private static final int METADATA_TYPE_LONG = 0;
  private static final int METADATA_TYPE_RATING = 3;
  private static final int METADATA_TYPE_TEXT = 1;
  private static final String TAG = "MediaMetadata";
  public final Bundle mBundle;
  public Object mMetadataObj;
  
  static
  {
    ArrayMap localArrayMap = new ArrayMap();
    METADATA_KEYS_TYPE = localArrayMap;
    localArrayMap.put("android.media.metadata.TITLE", Integer.valueOf(1));
    METADATA_KEYS_TYPE.put("android.media.metadata.ARTIST", Integer.valueOf(1));
    METADATA_KEYS_TYPE.put("android.media.metadata.DURATION", Integer.valueOf(0));
    METADATA_KEYS_TYPE.put("android.media.metadata.ALBUM", Integer.valueOf(1));
    METADATA_KEYS_TYPE.put("android.media.metadata.AUTHOR", Integer.valueOf(1));
    METADATA_KEYS_TYPE.put("android.media.metadata.WRITER", Integer.valueOf(1));
    METADATA_KEYS_TYPE.put("android.media.metadata.COMPOSER", Integer.valueOf(1));
    METADATA_KEYS_TYPE.put("android.media.metadata.COMPILATION", Integer.valueOf(1));
    METADATA_KEYS_TYPE.put("android.media.metadata.DATE", Integer.valueOf(1));
    METADATA_KEYS_TYPE.put("android.media.metadata.YEAR", Integer.valueOf(0));
    METADATA_KEYS_TYPE.put("android.media.metadata.GENRE", Integer.valueOf(1));
    METADATA_KEYS_TYPE.put("android.media.metadata.TRACK_NUMBER", Integer.valueOf(0));
    METADATA_KEYS_TYPE.put("android.media.metadata.NUM_TRACKS", Integer.valueOf(0));
    METADATA_KEYS_TYPE.put("android.media.metadata.DISC_NUMBER", Integer.valueOf(0));
    METADATA_KEYS_TYPE.put("android.media.metadata.ALBUM_ARTIST", Integer.valueOf(1));
    METADATA_KEYS_TYPE.put("android.media.metadata.ART", Integer.valueOf(2));
    METADATA_KEYS_TYPE.put("android.media.metadata.ART_URI", Integer.valueOf(1));
    METADATA_KEYS_TYPE.put("android.media.metadata.ALBUM_ART", Integer.valueOf(2));
    METADATA_KEYS_TYPE.put("android.media.metadata.ALBUM_ART_URI", Integer.valueOf(1));
    METADATA_KEYS_TYPE.put("android.media.metadata.USER_RATING", Integer.valueOf(3));
    METADATA_KEYS_TYPE.put("android.media.metadata.RATING", Integer.valueOf(3));
    METADATA_KEYS_TYPE.put("android.media.metadata.DISPLAY_TITLE", Integer.valueOf(1));
    METADATA_KEYS_TYPE.put("android.media.metadata.DISPLAY_SUBTITLE", Integer.valueOf(1));
    METADATA_KEYS_TYPE.put("android.media.metadata.DISPLAY_DESCRIPTION", Integer.valueOf(1));
    METADATA_KEYS_TYPE.put("android.media.metadata.DISPLAY_ICON", Integer.valueOf(2));
    METADATA_KEYS_TYPE.put("android.media.metadata.DISPLAY_ICON_URI", Integer.valueOf(1));
  }
  
  private MediaMetadataCompat(Bundle paramBundle)
  {
    mBundle = new Bundle(paramBundle);
  }
  
  private MediaMetadataCompat(Parcel paramParcel)
  {
    mBundle = paramParcel.readBundle();
  }
  
  private boolean containsKey(String paramString)
  {
    return mBundle.containsKey(paramString);
  }
  
  public static MediaMetadataCompat fromMediaMetadata(Object paramObject)
  {
    if ((paramObject == null) || (Build.VERSION.SDK_INT < 21)) {
      return null;
    }
    Object localObject1 = new Builder();
    Iterator localIterator = MediaMetadataCompatApi21.keySet(paramObject).iterator();
    while (localIterator.hasNext())
    {
      String str = (String)localIterator.next();
      Object localObject2 = (Integer)METADATA_KEYS_TYPE.get(str);
      if (localObject2 != null)
      {
        long l;
        switch (((Integer)localObject2).intValue())
        {
        default: 
          break;
        case 0: 
          l = MediaMetadataCompatApi21.getLong(paramObject, str);
          if ((METADATA_KEYS_TYPE.containsKey(str)) && (((Integer)METADATA_KEYS_TYPE.get(str)).intValue() != 0)) {
            throw new IllegalArgumentException("The " + str + " key cannot be used to put a long");
          }
        case 2: 
          localObject2 = MediaMetadataCompatApi21.getBitmap(paramObject, str);
          if ((METADATA_KEYS_TYPE.containsKey(str)) && (((Integer)METADATA_KEYS_TYPE.get(str)).intValue() != 2)) {
            throw new IllegalArgumentException("The " + str + " key cannot be used to put a Bitmap");
          }
          mBundle.putParcelable(str, (Parcelable)localObject2);
          continue;
          mBundle.putLong(str, l);
          break;
        case 3: 
          localObject2 = RatingCompat.fromRating(MediaMetadataCompatApi21.getRating(paramObject, str));
          if ((METADATA_KEYS_TYPE.containsKey(str)) && (((Integer)METADATA_KEYS_TYPE.get(str)).intValue() != 3)) {
            throw new IllegalArgumentException("The " + str + " key cannot be used to put a Rating");
          }
          mBundle.putParcelable(str, (Parcelable)localObject2);
          break;
        case 1: 
          localObject2 = MediaMetadataCompatApi21.getText(paramObject, str);
          if ((METADATA_KEYS_TYPE.containsKey(str)) && (((Integer)METADATA_KEYS_TYPE.get(str)).intValue() != 1)) {
            throw new IllegalArgumentException("The " + str + " key cannot be used to put a CharSequence");
          }
          mBundle.putCharSequence(str, (CharSequence)localObject2);
        }
      }
    }
    localObject1 = new MediaMetadataCompat(mBundle, (byte)0);
    mMetadataObj = paramObject;
    return (MediaMetadataCompat)localObject1;
  }
  
  private long getLong(String paramString)
  {
    return mBundle.getLong(paramString, 0L);
  }
  
  private Object getMediaMetadata()
  {
    if ((mMetadataObj != null) || (Build.VERSION.SDK_INT < 21)) {
      return mMetadataObj;
    }
    Object localObject = MediaMetadataCompatApi21.Builder.newInstance();
    Iterator localIterator = mBundle.keySet().iterator();
    while (localIterator.hasNext())
    {
      String str = (String)localIterator.next();
      Integer localInteger = (Integer)METADATA_KEYS_TYPE.get(str);
      if (localInteger != null) {
        switch (localInteger.intValue())
        {
        default: 
          break;
        case 0: 
          MediaMetadataCompatApi21.Builder.putLong(localObject, str, mBundle.getLong(str, 0L));
          break;
        case 2: 
          MediaMetadataCompatApi21.Builder.putBitmap(localObject, str, getBitmap(str));
          break;
        case 3: 
          MediaMetadataCompatApi21.Builder.putRating(localObject, str, getRating(str).getRating());
          break;
        case 1: 
          MediaMetadataCompatApi21.Builder.putText(localObject, str, mBundle.getCharSequence(str));
        }
      }
    }
    mMetadataObj = MediaMetadataCompatApi21.Builder.build(localObject);
    return mMetadataObj;
  }
  
  private String getString(String paramString)
  {
    paramString = mBundle.getCharSequence(paramString);
    if (paramString != null) {
      return paramString.toString();
    }
    return null;
  }
  
  private CharSequence getText(String paramString)
  {
    return mBundle.getCharSequence(paramString);
  }
  
  private Set<String> keySet()
  {
    return mBundle.keySet();
  }
  
  private int size()
  {
    return mBundle.size();
  }
  
  public final int describeContents()
  {
    return 0;
  }
  
  public final Bitmap getBitmap(String paramString)
  {
    try
    {
      paramString = (Bitmap)mBundle.getParcelable(paramString);
      return paramString;
    }
    catch (Exception paramString) {}
    return null;
  }
  
  public final RatingCompat getRating(String paramString)
  {
    try
    {
      paramString = (RatingCompat)mBundle.getParcelable(paramString);
      return paramString;
    }
    catch (Exception paramString) {}
    return null;
  }
  
  public final void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeBundle(mBundle);
  }
  
  public static final class Builder
  {
    final Bundle mBundle;
    
    public Builder()
    {
      mBundle = new Bundle();
    }
    
    private Builder(MediaMetadataCompat paramMediaMetadataCompat)
    {
      mBundle = new Bundle(mBundle);
    }
    
    private MediaMetadataCompat build()
    {
      return new MediaMetadataCompat(mBundle, (byte)0);
    }
    
    private Builder putBitmap(String paramString, Bitmap paramBitmap)
    {
      if ((MediaMetadataCompat.METADATA_KEYS_TYPE.containsKey(paramString)) && (((Integer)MediaMetadataCompat.METADATA_KEYS_TYPE.get(paramString)).intValue() != 2)) {
        throw new IllegalArgumentException("The " + paramString + " key cannot be used to put a Bitmap");
      }
      mBundle.putParcelable(paramString, paramBitmap);
      return this;
    }
    
    private Builder putLong(String paramString, long paramLong)
    {
      if ((MediaMetadataCompat.METADATA_KEYS_TYPE.containsKey(paramString)) && (((Integer)MediaMetadataCompat.METADATA_KEYS_TYPE.get(paramString)).intValue() != 0)) {
        throw new IllegalArgumentException("The " + paramString + " key cannot be used to put a long");
      }
      mBundle.putLong(paramString, paramLong);
      return this;
    }
    
    private Builder putRating(String paramString, RatingCompat paramRatingCompat)
    {
      if ((MediaMetadataCompat.METADATA_KEYS_TYPE.containsKey(paramString)) && (((Integer)MediaMetadataCompat.METADATA_KEYS_TYPE.get(paramString)).intValue() != 3)) {
        throw new IllegalArgumentException("The " + paramString + " key cannot be used to put a Rating");
      }
      mBundle.putParcelable(paramString, paramRatingCompat);
      return this;
    }
    
    private Builder putString(String paramString1, String paramString2)
    {
      if ((MediaMetadataCompat.METADATA_KEYS_TYPE.containsKey(paramString1)) && (((Integer)MediaMetadataCompat.METADATA_KEYS_TYPE.get(paramString1)).intValue() != 1)) {
        throw new IllegalArgumentException("The " + paramString1 + " key cannot be used to put a String");
      }
      mBundle.putCharSequence(paramString1, paramString2);
      return this;
    }
    
    private Builder putText(String paramString, CharSequence paramCharSequence)
    {
      if ((MediaMetadataCompat.METADATA_KEYS_TYPE.containsKey(paramString)) && (((Integer)MediaMetadataCompat.METADATA_KEYS_TYPE.get(paramString)).intValue() != 1)) {
        throw new IllegalArgumentException("The " + paramString + " key cannot be used to put a CharSequence");
      }
      mBundle.putCharSequence(paramString, paramCharSequence);
      return this;
    }
  }
}

/* Location:
 * Qualified Name:     android.support.v4.media.MediaMetadataCompat
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */