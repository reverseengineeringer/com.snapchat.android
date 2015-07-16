import com.snapchat.android.camera.BackgroundCameraFragment;
import com.snapchat.android.camera.BaseCameraFragment;
import com.snapchat.android.camera.model.CameraModel;
import javax.inject.Provider;

public final class wd
  implements bvk<BackgroundCameraFragment>
{
  private final bvk<BaseCameraFragment> b;
  private final Provider<CameraModel> c;
  
  static
  {
    if (!wd.class.desiredAssertionStatus()) {}
    for (boolean bool = true;; bool = false)
    {
      a = bool;
      return;
    }
  }
  
  private wd(bvk<BaseCameraFragment> parambvk, Provider<CameraModel> paramProvider)
  {
    if ((!a) && (parambvk == null)) {
      throw new AssertionError();
    }
    b = parambvk;
    if ((!a) && (paramProvider == null)) {
      throw new AssertionError();
    }
    c = paramProvider;
  }
  
  public static bvk<BackgroundCameraFragment> a(bvk<BaseCameraFragment> parambvk, Provider<CameraModel> paramProvider)
  {
    return new wd(parambvk, paramProvider);
  }
}

/* Location:
 * Qualified Name:     wd
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */