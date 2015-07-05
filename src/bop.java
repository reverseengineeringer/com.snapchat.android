import android.content.ContentResolver;
import android.content.Context;
import android.net.Uri;
import java.io.InputStream;

class bop
  extends bpi
{
  final Context a;
  
  bop(Context paramContext)
  {
    a = paramContext;
  }
  
  public boolean a(bpg parambpg)
  {
    return "content".equals(d.getScheme());
  }
  
  public bpi.a b(bpg parambpg)
  {
    return new bpi.a(c(parambpg), bpd.d.b);
  }
  
  final InputStream c(bpg parambpg)
  {
    return a.getContentResolver().openInputStream(d);
  }
}

/* Location:
 * Qualified Name:     bop
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */