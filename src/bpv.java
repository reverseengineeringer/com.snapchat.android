import android.content.Context;
import android.media.ExifInterface;
import android.net.Uri;
import java.io.InputStream;

final class bpv
  extends bpq
{
  bpv(Context paramContext)
  {
    super(paramContext);
  }
  
  public final boolean a(bqh parambqh)
  {
    return "file".equals(d.getScheme());
  }
  
  public final bqj.a b(bqh parambqh)
  {
    InputStream localInputStream = c(parambqh);
    bqe.d locald = bqe.d.b;
    int i;
    switch (new ExifInterface(d.getPath()).getAttributeInt("Orientation", 1))
    {
    case 4: 
    case 5: 
    case 7: 
    default: 
      i = 0;
    }
    for (;;)
    {
      return new bqj.a(null, localInputStream, locald, i);
      i = 90;
      continue;
      i = 180;
      continue;
      i = 270;
    }
  }
}

/* Location:
 * Qualified Name:     bpv
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */