import com.snapchat.android.analytics.CameraEventAnalytics;
import com.snapchat.android.camera.model.CameraModel;
import javax.inject.Provider;

public final class np
  implements bvk<CameraEventAnalytics>
{
  private final Provider<CameraModel> mCameraModelProvider;
  private final Provider<xf> mFlashModelProvider;
  
  static
  {
    if (!np.class.desiredAssertionStatus()) {}
    for (boolean bool = true;; bool = false)
    {
      $assertionsDisabled = bool;
      return;
    }
  }
  
  private np(Provider<CameraModel> paramProvider, Provider<xf> paramProvider1)
  {
    assert (paramProvider != null);
    mCameraModelProvider = paramProvider;
    assert (paramProvider1 != null);
    mFlashModelProvider = paramProvider1;
  }
  
  public static bvk<CameraEventAnalytics> a(Provider<CameraModel> paramProvider, Provider<xf> paramProvider1)
  {
    return new np(paramProvider, paramProvider1);
  }
}

/* Location:
 * Qualified Name:     np
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */