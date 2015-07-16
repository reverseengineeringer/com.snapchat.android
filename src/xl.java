import com.snapchat.android.camera.model.CameraModel;
import javax.inject.Provider;

public final class xl
  implements bvk<xj>
{
  private final Provider<CameraModel> b;
  private final Provider<xm> c;
  
  static
  {
    if (!xl.class.desiredAssertionStatus()) {}
    for (boolean bool = true;; bool = false)
    {
      a = bool;
      return;
    }
  }
  
  private xl(Provider<CameraModel> paramProvider, Provider<xm> paramProvider1)
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
  
  public static bvk<xj> a(Provider<CameraModel> paramProvider, Provider<xm> paramProvider1)
  {
    return new xl(paramProvider, paramProvider1);
  }
}

/* Location:
 * Qualified Name:     xl
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */