import com.snapchat.android.analytics.CameraEventAnalytics;
import com.snapchat.android.camera.model.CameraModel;
import javax.inject.Provider;

public final class my
  implements buj<CameraEventAnalytics>
{
  private final Provider<CameraModel> mCameraModelProvider;
  private final Provider<wj> mFlashModelProvider;
  
  static
  {
    if (!my.class.desiredAssertionStatus()) {}
    for (boolean bool = true;; bool = false)
    {
      $assertionsDisabled = bool;
      return;
    }
  }
  
  private my(Provider<CameraModel> paramProvider, Provider<wj> paramProvider1)
  {
    assert (paramProvider != null);
    mCameraModelProvider = paramProvider;
    assert (paramProvider1 != null);
    mFlashModelProvider = paramProvider1;
  }
  
  public static buj<CameraEventAnalytics> a(Provider<CameraModel> paramProvider, Provider<wj> paramProvider1)
  {
    return new my(paramProvider, paramProvider1);
  }
}

/* Location:
 * Qualified Name:     my
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */