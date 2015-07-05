import com.snapchat.android.camera.BaseCameraFragment;
import com.snapchat.android.camera.CameraFragment;
import javax.inject.Provider;

public final class vj
  implements buj<CameraFragment>
{
  private final buj<BaseCameraFragment> b;
  private final Provider<vw> c;
  private final Provider<vz> d;
  private final Provider<wl> e;
  private final Provider<wj> f;
  private final Provider<wk> g;
  private final Provider<wn> h;
  private final Provider<azo> i;
  
  static
  {
    if (!vj.class.desiredAssertionStatus()) {}
    for (boolean bool = true;; bool = false)
    {
      a = bool;
      return;
    }
  }
  
  private vj(buj<BaseCameraFragment> parambuj, Provider<vw> paramProvider, Provider<vz> paramProvider1, Provider<wl> paramProvider2, Provider<wj> paramProvider3, Provider<wk> paramProvider4, Provider<wn> paramProvider5, Provider<azo> paramProvider6)
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
  
  public static buj<CameraFragment> a(buj<BaseCameraFragment> parambuj, Provider<vw> paramProvider, Provider<vz> paramProvider1, Provider<wl> paramProvider2, Provider<wj> paramProvider3, Provider<wk> paramProvider4, Provider<wn> paramProvider5, Provider<azo> paramProvider6)
  {
    return new vj(parambuj, paramProvider, paramProvider1, paramProvider2, paramProvider3, paramProvider4, paramProvider5, paramProvider6);
  }
}

/* Location:
 * Qualified Name:     vj
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */