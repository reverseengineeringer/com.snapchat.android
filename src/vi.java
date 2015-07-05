import com.snapchat.android.camera.BaseCameraFragment;
import com.snapchat.android.camera.model.CameraModel;
import com.snapchat.android.util.fragment.SnapchatFragment;
import javax.inject.Provider;

public final class vi
  implements buj<BaseCameraFragment>
{
  private final buj<SnapchatFragment> b;
  private final Provider<CameraModel> c;
  private final Provider<wq> d;
  
  static
  {
    if (!vi.class.desiredAssertionStatus()) {}
    for (boolean bool = true;; bool = false)
    {
      a = bool;
      return;
    }
  }
  
  private vi(buj<SnapchatFragment> parambuj, Provider<CameraModel> paramProvider, Provider<wq> paramProvider1)
  {
    if ((!a) && (parambuj == null)) {
      throw new AssertionError();
    }
    b = parambuj;
    if ((!a) && (paramProvider == null)) {
      throw new AssertionError();
    }
    c = paramProvider;
    if ((!a) && (paramProvider1 == null)) {
      throw new AssertionError();
    }
    d = paramProvider1;
  }
  
  public static buj<BaseCameraFragment> a(buj<SnapchatFragment> parambuj, Provider<CameraModel> paramProvider, Provider<wq> paramProvider1)
  {
    return new vi(parambuj, paramProvider, paramProvider1);
  }
}

/* Location:
 * Qualified Name:     vi
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */