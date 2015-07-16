import com.snapchat.android.camera.model.CameraModel;
import javax.inject.Provider;

public final class wx
  implements bvk<wv>
{
  private final Provider<xg> b;
  private final Provider<CameraModel> c;
  private final Provider<xf> d;
  private final Provider<xj> e;
  
  static
  {
    if (!wx.class.desiredAssertionStatus()) {}
    for (boolean bool = true;; bool = false)
    {
      a = bool;
      return;
    }
  }
  
  private wx(Provider<xg> paramProvider, Provider<CameraModel> paramProvider1, Provider<xf> paramProvider2, Provider<xj> paramProvider3)
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
  
  public static bvk<wv> a(Provider<xg> paramProvider, Provider<CameraModel> paramProvider1, Provider<xf> paramProvider2, Provider<xj> paramProvider3)
  {
    return new wx(paramProvider, paramProvider1, paramProvider2, paramProvider3);
  }
}

/* Location:
 * Qualified Name:     wx
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */