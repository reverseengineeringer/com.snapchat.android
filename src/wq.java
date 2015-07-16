import com.snapchat.android.camera.model.CameraModel;
import javax.inject.Provider;

public final class wq
  implements bvk<wp>
{
  private final bvk<wr> b;
  private final Provider<CameraModel> c;
  
  static
  {
    if (!wq.class.desiredAssertionStatus()) {}
    for (boolean bool = true;; bool = false)
    {
      a = bool;
      return;
    }
  }
  
  private wq(bvk<wr> parambvk, Provider<CameraModel> paramProvider)
  {
    if ((!a) && (parambvk == null)) {
      throw new AssertionError();
    }
    b = parambvk;
    if ((!a) && (paramProvider == null)) {
      throw new AssertionError();
    }
    c = paramProvider;
  }
  
  public static bvk<wp> a(bvk<wr> parambvk, Provider<CameraModel> paramProvider)
  {
    return new wq(parambvk, paramProvider);
  }
}

/* Location:
 * Qualified Name:     wq
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */