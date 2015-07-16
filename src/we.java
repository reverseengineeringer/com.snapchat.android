import com.snapchat.android.camera.BaseCameraFragment;
import com.snapchat.android.camera.model.CameraModel;
import com.snapchat.android.util.fragment.SnapchatFragment;
import javax.inject.Provider;

public final class we
  implements bvk<BaseCameraFragment>
{
  private final bvk<SnapchatFragment> b;
  private final Provider<CameraModel> c;
  private final Provider<xm> d;
  
  static
  {
    if (!we.class.desiredAssertionStatus()) {}
    for (boolean bool = true;; bool = false)
    {
      a = bool;
      return;
    }
  }
  
  private we(bvk<SnapchatFragment> parambvk, Provider<CameraModel> paramProvider, Provider<xm> paramProvider1)
  {
    if ((!a) && (parambvk == null)) {
      throw new AssertionError();
    }
    b = parambvk;
    if ((!a) && (paramProvider == null)) {
      throw new AssertionError();
    }
    c = paramProvider;
    if ((!a) && (paramProvider1 == null)) {
      throw new AssertionError();
    }
    d = paramProvider1;
  }
  
  public static bvk<BaseCameraFragment> a(bvk<SnapchatFragment> parambvk, Provider<CameraModel> paramProvider, Provider<xm> paramProvider1)
  {
    return new we(parambvk, paramProvider, paramProvider1);
  }
}

/* Location:
 * Qualified Name:     we
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */