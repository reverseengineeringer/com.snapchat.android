import android.content.Context;
import android.content.res.AssetManager;
import android.net.Uri;
import java.util.List;
import kkkkkk.xkkkxk;

final class bpl
  extends bqj
{
  private static final int a = 22;
  private final AssetManager b;
  
  public bpl(Context paramContext)
  {
    b = paramContext.getAssets();
  }
  
  public final boolean a(bqh parambqh)
  {
    boolean bool2 = false;
    parambqh = d;
    boolean bool1 = bool2;
    if ("file".equals(parambqh.getScheme()))
    {
      bool1 = bool2;
      if (!parambqh.getPathSegments().isEmpty())
      {
        bool1 = bool2;
        if ("android_asset".equals(parambqh.getPathSegments().get(0))) {
          bool1 = true;
        }
      }
    }
    return bool1;
  }
  
  public final bqj.a b(bqh parambqh)
  {
    return new bqj.a(xkkkxk.bООООО041E(b, d.toString().substring(a)), bqe.d.b);
  }
}

/* Location:
 * Qualified Name:     bpl
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */