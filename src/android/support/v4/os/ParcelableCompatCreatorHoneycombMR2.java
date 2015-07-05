package android.support.v4.os;

import android.os.Parcel;
import android.os.Parcelable.ClassLoaderCreator;

final class ParcelableCompatCreatorHoneycombMR2<T>
  implements Parcelable.ClassLoaderCreator<T>
{
  private final ParcelableCompatCreatorCallbacks<T> mCallbacks;
  
  public ParcelableCompatCreatorHoneycombMR2(ParcelableCompatCreatorCallbacks<T> paramParcelableCompatCreatorCallbacks)
  {
    mCallbacks = paramParcelableCompatCreatorCallbacks;
  }
  
  public final T createFromParcel(Parcel paramParcel)
  {
    return (T)mCallbacks.createFromParcel(paramParcel, null);
  }
  
  public final T createFromParcel(Parcel paramParcel, ClassLoader paramClassLoader)
  {
    return (T)mCallbacks.createFromParcel(paramParcel, paramClassLoader);
  }
  
  public final T[] newArray(int paramInt)
  {
    return mCallbacks.newArray(paramInt);
  }
}

/* Location:
 * Qualified Name:     android.support.v4.os.ParcelableCompatCreatorHoneycombMR2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */