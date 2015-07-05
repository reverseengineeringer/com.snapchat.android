import android.content.Context;
import android.content.res.AssetManager;
import android.net.Uri;
import java.util.List;

final class bok
  extends bpi
{
  private static final int a = 22;
  private final AssetManager b;
  
  public bok(Context paramContext)
  {
    b = paramContext.getAssets();
  }
  
  public final boolean a(bpg parambpg)
  {
    boolean bool2 = false;
    parambpg = d;
    boolean bool1 = bool2;
    if ("file".equals(parambpg.getScheme()))
    {
      bool1 = bool2;
      if (!parambpg.getPathSegments().isEmpty())
      {
        bool1 = bool2;
        if ("android_asset".equals(parambpg.getPathSegments().get(0))) {
          bool1 = true;
        }
      }
    }
    return bool1;
  }
  
  public final bpi.a b(bpg parambpg)
  {
    return new bpi.a(b.open(d.toString().substring(a)), bpd.d.b);
  }
}

/* Location:
 * Qualified Name:     bok
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */