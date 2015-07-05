import com.snapchat.android.camera.model.CameraModel;
import javax.inject.Provider;

public final class vu
  implements buj<vt>
{
  private final buj<vv> b;
  private final Provider<CameraModel> c;
  
  static
  {
    if (!vu.class.desiredAssertionStatus()) {}
    for (boolean bool = true;; bool = false)
    {
      a = bool;
      return;
    }
  }
  
  private vu(buj<vv> parambuj, Provider<CameraModel> paramProvider)
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
  
  public static buj<vt> a(buj<vv> parambuj, Provider<CameraModel> paramProvider)
  {
    return new vu(parambuj, paramProvider);
  }
}

/* Location:
 * Qualified Name:     vu
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */