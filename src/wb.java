import com.snapchat.android.camera.model.CameraModel;
import javax.inject.Provider;

public final class wb
  implements buj<vz>
{
  private final Provider<wk> b;
  private final Provider<CameraModel> c;
  private final Provider<wj> d;
  private final Provider<wn> e;
  
  static
  {
    if (!wb.class.desiredAssertionStatus()) {}
    for (boolean bool = true;; bool = false)
    {
      a = bool;
      return;
    }
  }
  
  private wb(Provider<wk> paramProvider, Provider<CameraModel> paramProvider1, Provider<wj> paramProvider2, Provider<wn> paramProvider3)
  {
    if ((!a) && (paramProvider == null)) {
      throw new AssertionError();
    }
    b = paramProvider;
    if ((!a) && (paramProvider1 == null)) {
      throw new AssertionError();
    }
    c = paramProvider1;
    if ((!a) && (paramProvider2 == null)) {
      throw new AssertionError();
    }
    d = paramProvider2;
    if ((!a) && (paramProvider3 == null)) {
      throw new AssertionError();
    }
    e = paramProvider3;
  }
  
  public static buj<vz> a(Provider<wk> paramProvider, Provider<CameraModel> paramProvider1, Provider<wj> paramProvider2, Provider<wn> paramProvider3)
  {
    return new wb(paramProvider, paramProvider1, paramProvider2, paramProvider3);
  }
}

/* Location:
 * Qualified Name:     wb
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */