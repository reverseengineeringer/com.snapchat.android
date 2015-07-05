import android.content.Context;
import android.content.res.Resources;
import android.graphics.BitmapFactory;
import android.graphics.BitmapFactory.Options;
import android.net.Uri;

final class bpj
  extends bpi
{
  private final Context a;
  
  bpj(Context paramContext)
  {
    a = paramContext;
  }
  
  public final boolean a(bpg parambpg)
  {
    if (e != 0) {
      return true;
    }
    return "android.resource".equals(d.getScheme());
  }
  
  public final bpi.a b(bpg parambpg)
  {
    Resources localResources = bpo.a(a, parambpg);
    int i = bpo.a(localResources, parambpg);
    BitmapFactory.Options localOptions = d(parambpg);
    if (a(localOptions))
    {
      BitmapFactory.decodeResource(localResources, i, localOptions);
      a(h, i, localOptions, parambpg);
    }
    return new bpi.a(BitmapFactory.decodeResource(localResources, i, localOptions), bpd.d.b);
  }
}

/* Location:
 * Qualified Name:     bpj
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */