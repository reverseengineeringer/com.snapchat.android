import com.snapchat.android.camera.BaseCameraFragment;
import com.snapchat.android.camera.CameraFragment;
import javax.inject.Provider;

public final class wf
  implements bvk<CameraFragment>
{
  private final bvk<BaseCameraFragment> b;
  private final Provider<ws> c;
  private final Provider<wv> d;
  private final Provider<xh> e;
  private final Provider<xf> f;
  private final Provider<xg> g;
  private final Provider<xj> h;
  private final Provider<ban> i;
  
  static
  {
    if (!wf.class.desiredAssertionStatus()) {}
    for (boolean bool = true;; bool = false)
    {
      a = bool;
      return;
    }
  }
  
  private wf(bvk<BaseCameraFragment> parambvk, Provider<ws> paramProvider, Provider<wv> paramProvider1, Provider<xh> paramProvider2, Provider<xf> paramProvider3, Provider<xg> paramProvider4, Provider<xj> paramProvider5, Provider<ban> paramProvider6)
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
    if ((!a) && (paramProvider2 == null)) {
      throw new AssertionError();
    }
    e = paramProvider2;
    if ((!a) && (paramProvider3 == null)) {
      throw new AssertionError();
    }
    f = paramProvider3;
    if ((!a) && (paramProvider4 == null)) {
      throw new AssertionError();
    }
    g = paramProvider4;
    if ((!a) && (paramProvider5 == null)) {
      throw new AssertionError();
    }
    h = paramProvider5;
    if ((!a) && (paramProvider6 == null)) {
      throw new AssertionError();
    }
    i = paramProvider6;
  }
  
  public static bvk<CameraFragment> a(bvk<BaseCameraFragment> parambvk, Provider<ws> paramProvider, Provider<wv> paramProvider1, Provider<xh> paramProvider2, Provider<xf> paramProvider3, Provider<xg> paramProvider4, Provider<xj> paramProvider5, Provider<ban> paramProvider6)
  {
    return new wf(parambvk, paramProvider, paramProvider1, paramProvider2, paramProvider3, paramProvider4, paramProvider5, paramProvider6);
  }
}

/* Location:
 * Qualified Name:     wf
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */