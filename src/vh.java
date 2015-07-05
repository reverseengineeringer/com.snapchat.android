import com.snapchat.android.camera.BackgroundCameraFragment;
import com.snapchat.android.camera.BaseCameraFragment;
import com.snapchat.android.camera.model.CameraModel;
import javax.inject.Provider;

public final class vh
  implements buj<BackgroundCameraFragment>
{
  private final buj<BaseCameraFragment> b;
  private final Provider<CameraModel> c;
  
  static
  {
    if (!vh.class.desiredAssertionStatus()) {}
    for (boolean bool = true;; bool = false)
    {
      a = bool;
      return;
    }
  }
  
  private vh(buj<BaseCameraFragment> parambuj, Provider<CameraModel> paramProvider)
  {
    if ((!a) && (parambuj == null)) {
      throw new AssertionError();
    }
    b = parambuj;
    if ((!a) && (paramProvider == null)) {
      throw new AssertionError();
    }
    c = paramProvider;
  }
  
  public static buj<BackgroundCameraFragment> a(buj<BaseCameraFragment> parambuj, Provider<CameraModel> paramProvider)
  {
    return new vh(parambuj, paramProvider);
  }
}

/* Location:
 * Qualified Name:     vh
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */