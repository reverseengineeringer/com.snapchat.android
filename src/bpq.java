import android.content.ContentResolver;
import android.content.Context;
import android.net.Uri;
import java.io.InputStream;

class bpq
  extends bqj
{
  final Context a;
  
  bpq(Context paramContext)
  {
    a = paramContext;
  }
  
  public boolean a(bqh parambqh)
  {
    return "content".equals(d.getScheme());
  }
  
  public bqj.a b(bqh parambqh)
  {
    return new bqj.a(c(parambqh), bqe.d.b);
  }
  
  final InputStream c(bqh parambqh)
  {
    return a.getContentResolver().openInputStream(d);
  }
}

/* Location:
 * Qualified Name:     bpq
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */