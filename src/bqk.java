import android.content.Context;
import android.content.res.Resources;
import android.graphics.BitmapFactory;
import android.graphics.BitmapFactory.Options;
import android.net.Uri;

final class bqk
  extends bqj
{
  private final Context a;
  
  bqk(Context paramContext)
  {
    a = paramContext;
  }
  
  public final boolean a(bqh parambqh)
  {
    if (e != 0) {
      return true;
    }
    return "android.resource".equals(d.getScheme());
  }
  
  public final bqj.a b(bqh parambqh)
  {
    Resources localResources = bqp.a(a, parambqh);
    int i = bqp.a(localResources, parambqh);
    BitmapFactory.Options localOptions = d(parambqh);
    if (a(localOptions))
    {
      BitmapFactory.decodeResource(localResources, i, localOptions);
      a(h, i, localOptions, parambqh);
    }
    return new bqj.a(BitmapFactory.decodeResource(localResources, i, localOptions), bqe.d.b);
  }
}

/* Location:
 * Qualified Name:     bqk
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */