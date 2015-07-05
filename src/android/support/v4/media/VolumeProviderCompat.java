package android.support.v4.media;

import android.os.Build.VERSION;

public abstract class VolumeProviderCompat
{
  public static final int VOLUME_CONTROL_ABSOLUTE = 2;
  public static final int VOLUME_CONTROL_FIXED = 0;
  public static final int VOLUME_CONTROL_RELATIVE = 1;
  private Callback mCallback;
  public final int mControlType;
  public int mCurrentVolume;
  public final int mMaxVolume;
  public Object mVolumeProviderObj;
  
  private VolumeProviderCompat(int paramInt1, int paramInt2, int paramInt3)
  {
    mControlType = paramInt1;
    mMaxVolume = paramInt2;
    mCurrentVolume = paramInt3;
  }
  
  private int getCurrentVolume()
  {
    return mCurrentVolume;
  }
  
  private int getMaxVolume()
  {
    return mMaxVolume;
  }
  
  private int getVolumeControl()
  {
    return mControlType;
  }
  
  private Object getVolumeProvider()
  {
    if ((mVolumeProviderObj != null) || (Build.VERSION.SDK_INT < 21)) {
      return mVolumeProviderObj;
    }
    mVolumeProviderObj = VolumeProviderCompatApi21.createVolumeProvider(mControlType, mMaxVolume, mCurrentVolume, new VolumeProviderCompatApi21.Delegate()
    {
      public final void onAdjustVolume$13462e() {}
      
      public final void onSetVolumeTo$13462e() {}
    });
    return mVolumeProviderObj;
  }
  
  private static void onAdjustVolume$13462e() {}
  
  private static void onSetVolumeTo$13462e() {}
  
  private void setCallback(Callback paramCallback)
  {
    mCallback = paramCallback;
  }
  
  private static void setCurrentVolume$13462e() {}
  
  public static abstract class Callback
  {
    public abstract void onVolumeChanged$3c5a58fd();
  }
}

/* Location:
 * Qualified Name:     android.support.v4.media.VolumeProviderCompat
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */