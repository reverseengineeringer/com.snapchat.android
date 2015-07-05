package android.support.v4.media;

import android.os.Build.VERSION;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;

public final class RatingCompat
  implements Parcelable
{
  public static final Parcelable.Creator<RatingCompat> CREATOR = new Parcelable.Creator()
  {
    private static RatingCompat createFromParcel(Parcel paramAnonymousParcel)
    {
      return new RatingCompat(paramAnonymousParcel.readInt(), paramAnonymousParcel.readFloat(), (byte)0);
    }
    
    private static RatingCompat[] newArray(int paramAnonymousInt)
    {
      return new RatingCompat[paramAnonymousInt];
    }
  };
  public static final int RATING_3_STARS = 3;
  public static final int RATING_4_STARS = 4;
  public static final int RATING_5_STARS = 5;
  public static final int RATING_HEART = 1;
  public static final int RATING_NONE = 0;
  private static final float RATING_NOT_RATED = -1.0F;
  public static final int RATING_PERCENTAGE = 6;
  public static final int RATING_THUMB_UP_DOWN = 2;
  private static final String TAG = "Rating";
  private Object mRatingObj;
  private final int mRatingStyle;
  private final float mRatingValue;
  
  private RatingCompat(int paramInt, float paramFloat)
  {
    mRatingStyle = paramInt;
    mRatingValue = paramFloat;
  }
  
  public static RatingCompat fromRating(Object paramObject)
  {
    float f1 = 1.0F;
    Object localObject2 = null;
    if ((paramObject == null) || (Build.VERSION.SDK_INT < 21)) {
      return null;
    }
    int i = RatingCompatApi21.getRatingStyle(paramObject);
    Object localObject1;
    if (RatingCompatApi21.isRated(paramObject)) {
      switch (i)
      {
      default: 
        return null;
      case 1: 
        if (RatingCompatApi21.hasHeart(paramObject)) {
          localObject1 = new RatingCompat(1, f1);
        }
        break;
      }
    }
    for (;;)
    {
      mRatingObj = paramObject;
      return (RatingCompat)localObject1;
      f1 = 0.0F;
      break;
      if (RatingCompatApi21.isThumbUp(paramObject)) {}
      for (;;)
      {
        localObject1 = new RatingCompat(2, f1);
        break;
        f1 = 0.0F;
      }
      float f2 = RatingCompatApi21.getStarRating(paramObject);
      switch (i)
      {
      default: 
        new StringBuilder("Invalid rating style (").append(i).append(") for a star rating");
        localObject1 = null;
      }
      for (;;)
      {
        break;
        f1 = 3.0F;
        for (;;)
        {
          if ((f2 >= 0.0F) && (f2 <= f1)) {
            break label222;
          }
          localObject1 = null;
          break;
          f1 = 4.0F;
          continue;
          f1 = 5.0F;
        }
        label222:
        localObject1 = new RatingCompat(i, f2);
      }
      f1 = RatingCompatApi21.getPercentRating(paramObject);
      localObject1 = localObject2;
      if (f1 >= 0.0F)
      {
        localObject1 = localObject2;
        if (f1 <= 100.0F)
        {
          localObject1 = new RatingCompat(6, f1);
          continue;
          switch (i)
          {
          default: 
            localObject1 = localObject2;
            break;
          case 1: 
          case 2: 
          case 3: 
          case 4: 
          case 5: 
          case 6: 
            localObject1 = new RatingCompat(i, -1.0F);
          }
        }
      }
    }
  }
  
  private float getPercentRating()
  {
    if ((mRatingStyle != 6) || (!isRated())) {
      return -1.0F;
    }
    return mRatingValue;
  }
  
  private int getRatingStyle()
  {
    return mRatingStyle;
  }
  
  private float getStarRating()
  {
    switch (mRatingStyle)
    {
    }
    do
    {
      return -1.0F;
    } while (!isRated());
    return mRatingValue;
  }
  
  private boolean hasHeart()
  {
    if (mRatingStyle != 1) {}
    while (mRatingValue != 1.0F) {
      return false;
    }
    return true;
  }
  
  private boolean isRated()
  {
    return mRatingValue >= 0.0F;
  }
  
  private boolean isThumbUp()
  {
    if (mRatingStyle != 2) {}
    while (mRatingValue != 1.0F) {
      return false;
    }
    return true;
  }
  
  private static RatingCompat newHeartRating(boolean paramBoolean)
  {
    if (paramBoolean) {}
    for (float f = 1.0F;; f = 0.0F) {
      return new RatingCompat(1, f);
    }
  }
  
  private static RatingCompat newPercentageRating(float paramFloat)
  {
    if ((paramFloat < 0.0F) || (paramFloat > 100.0F)) {
      return null;
    }
    return new RatingCompat(6, paramFloat);
  }
  
  private static RatingCompat newStarRating(int paramInt, float paramFloat)
  {
    float f;
    switch (paramInt)
    {
    default: 
      new StringBuilder("Invalid rating style (").append(paramInt).append(") for a star rating");
      return null;
    case 3: 
      f = 3.0F;
    }
    while ((paramFloat >= 0.0F) && (paramFloat <= f))
    {
      return new RatingCompat(paramInt, paramFloat);
      f = 4.0F;
      continue;
      f = 5.0F;
    }
  }
  
  private static RatingCompat newThumbRating(boolean paramBoolean)
  {
    if (paramBoolean) {}
    for (float f = 1.0F;; f = 0.0F) {
      return new RatingCompat(2, f);
    }
  }
  
  private static RatingCompat newUnratedRating(int paramInt)
  {
    switch (paramInt)
    {
    default: 
      return null;
    }
    return new RatingCompat(paramInt, -1.0F);
  }
  
  public final int describeContents()
  {
    return mRatingStyle;
  }
  
  public final Object getRating()
  {
    float f2 = -1.0F;
    boolean bool2 = true;
    boolean bool1 = true;
    if ((mRatingObj != null) || (Build.VERSION.SDK_INT < 21)) {
      return mRatingObj;
    }
    if (isRated()) {
      switch (mRatingStyle)
      {
      default: 
        return null;
      case 1: 
        if ((mRatingStyle == 1) && (mRatingValue == 1.0F)) {
          label99:
          mRatingObj = RatingCompatApi21.newHeartRating(bool1);
        }
        break;
      }
    }
    for (;;)
    {
      return mRatingObj;
      bool1 = false;
      break label99;
      if ((mRatingStyle == 2) && (mRatingValue == 1.0F)) {}
      for (bool1 = bool2;; bool1 = false)
      {
        mRatingObj = RatingCompatApi21.newThumbRating(bool1);
        break;
      }
      int i = mRatingStyle;
      switch (mRatingStyle)
      {
      }
      label192:
      for (float f1 = -1.0F;; f1 = mRatingValue)
      {
        mRatingObj = RatingCompatApi21.newStarRating(i, f1);
        break;
        if (!isRated()) {
          break label192;
        }
      }
      f1 = f2;
      if (mRatingStyle == 6) {
        if (isRated()) {
          break label253;
        }
      }
      label253:
      for (f1 = f2;; f1 = mRatingValue)
      {
        mRatingObj = RatingCompatApi21.newPercentageRating(f1);
        break;
      }
      mRatingObj = RatingCompatApi21.newUnratedRating(mRatingStyle);
    }
  }
  
  public final String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder("Rating:style=").append(mRatingStyle).append(" rating=");
    if (mRatingValue < 0.0F) {}
    for (String str = "unrated";; str = String.valueOf(mRatingValue)) {
      return str;
    }
  }
  
  public final void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeInt(mRatingStyle);
    paramParcel.writeFloat(mRatingValue);
  }
}

/* Location:
 * Qualified Name:     android.support.v4.media.RatingCompat
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */