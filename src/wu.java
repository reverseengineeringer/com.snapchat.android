import com.snapchat.android.camera.model.CameraModel;
import javax.inject.Provider;

public final class wu
  implements bvk<ws>
{
  private final Provider<xf> b;
  private final Provider<CameraModel> c;
  
  static
  {
    if (!wu.class.desiredAssertionStatus()) {}
    for (boolean bool = true;; bool = false)
    {
      a = bool;
      return;
    }
  }
  
  private wu(Provider<xf> paramProvider, Provider<CameraModel> paramProvider1)
  {
    if ((!a) && (paramProvider == null)) {
      throw new AssertionError();
    }
    b = paramProvider;
    if ((!a) && (paramProvider1 == null)) {
      throw new AssertionError();
    }
    c = paramProvider1;
  }
  
  public static bvk<ws> a(Provider<xf> paramProvider, Provider<CameraModel> paramProvider1)
  {
    return new wu(paramProvider, paramProvider1);
  }
}

/* Location:
 * Qualified Name:     wu
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */