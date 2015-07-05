import com.snapchat.android.camera.model.CameraModel;
import javax.inject.Provider;

public final class wp
  implements buj<wn>
{
  private final Provider<CameraModel> b;
  private final Provider<wq> c;
  
  static
  {
    if (!wp.class.desiredAssertionStatus()) {}
    for (boolean bool = true;; bool = false)
    {
      a = bool;
      return;
    }
  }
  
  private wp(Provider<CameraModel> paramProvider, Provider<wq> paramProvider1)
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
  
  public static buj<wn> a(Provider<CameraModel> paramProvider, Provider<wq> paramProvider1)
  {
    return new wp(paramProvider, paramProvider1);
  }
}

/* Location:
 * Qualified Name:     wp
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */