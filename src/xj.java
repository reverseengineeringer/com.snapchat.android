import com.snapchat.android.camera.model.CameraModel;
import com.snapchat.android.camera.videocamera.VideoCameraHandler;
import com.snapchat.android.util.WaitDoneHandler;
import javax.inject.Provider;

public final class xj
  implements buj<VideoCameraHandler>
{
  private final buj<WaitDoneHandler> b;
  private final Provider<xi> c;
  private final Provider<CameraModel> d;
  private final Provider<azo> e;
  
  static
  {
    if (!xj.class.desiredAssertionStatus()) {}
    for (boolean bool = true;; bool = false)
    {
      a = bool;
      return;
    }
  }
  
  private xj(buj<WaitDoneHandler> parambuj, Provider<xi> paramProvider, Provider<CameraModel> paramProvider1, Provider<azo> paramProvider2)
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
  }
  
  public static buj<VideoCameraHandler> a(buj<WaitDoneHandler> parambuj, Provider<xi> paramProvider, Provider<CameraModel> paramProvider1, Provider<azo> paramProvider2)
  {
    return new xj(parambuj, paramProvider, paramProvider1, paramProvider2);
  }
}

/* Location:
 * Qualified Name:     xj
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */