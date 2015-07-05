import com.snapchat.android.camera.model.CameraModel;
import javax.inject.Provider;

public final class vy
  implements buj<vw>
{
  private final Provider<wj> b;
  private final Provider<CameraModel> c;
  
  static
  {
    if (!vy.class.desiredAssertionStatus()) {}
    for (boolean bool = true;; bool = false)
    {
      a = bool;
      return;
    }
  }
  
  private vy(Provider<wj> paramProvider, Provider<CameraModel> paramProvider1)
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
  
  public static buj<vw> a(Provider<wj> paramProvider, Provider<CameraModel> paramProvider1)
  {
    return new vy(paramProvider, paramProvider1);
  }
}

/* Location:
 * Qualified Name:     vy
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */