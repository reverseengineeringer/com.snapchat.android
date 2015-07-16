import com.snapchat.android.camera.model.CameraModel;
import com.snapchat.android.camera.videocamera.VideoCameraHandler;
import com.snapchat.android.util.WaitDoneHandler;
import javax.inject.Provider;

public final class yf
  implements bvk<VideoCameraHandler>
{
  private final bvk<WaitDoneHandler> b;
  private final Provider<ye> c;
  private final Provider<CameraModel> d;
  private final Provider<ban> e;
  
  static
  {
    if (!yf.class.desiredAssertionStatus()) {}
    for (boolean bool = true;; bool = false)
    {
      a = bool;
      return;
    }
  }
  
  private yf(bvk<WaitDoneHandler> parambvk, Provider<ye> paramProvider, Provider<CameraModel> paramProvider1, Provider<ban> paramProvider2)
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
  }
  
  public static bvk<VideoCameraHandler> a(bvk<WaitDoneHandler> parambvk, Provider<ye> paramProvider, Provider<CameraModel> paramProvider1, Provider<ban> paramProvider2)
  {
    return new yf(parambvk, paramProvider, paramProvider1, paramProvider2);
  }
}

/* Location:
 * Qualified Name:     yf
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */