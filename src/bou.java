import android.content.Context;
import android.media.ExifInterface;
import android.net.Uri;
import java.io.InputStream;

final class bou
  extends bop
{
  bou(Context paramContext)
  {
    super(paramContext);
  }
  
  public final boolean a(bpg parambpg)
  {
    return "file".equals(d.getScheme());
  }
  
  public final bpi.a b(bpg parambpg)
  {
    InputStream localInputStream = c(parambpg);
    bpd.d locald = bpd.d.b;
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
      return new bpi.a(null, localInputStream, locald, i);
      i = 90;
      continue;
      i = 180;
      continue;
      i = 270;
    }
  }
}

/* Location:
 * Qualified Name:     bou
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */