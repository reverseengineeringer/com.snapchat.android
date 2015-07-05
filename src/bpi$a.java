import android.graphics.Bitmap;
import java.io.InputStream;

public final class bpi$a
{
  final bpd.d a;
  final Bitmap b;
  final InputStream c;
  final int d;
  
  public bpi$a(Bitmap paramBitmap, bpd.d paramd)
  {
    this((Bitmap)bpo.a(paramBitmap, "bitmap == null"), null, paramd, 0);
  }
  
  bpi$a(Bitmap paramBitmap, InputStream paramInputStream, bpd.d paramd, int paramInt)
  {
    int i;
    if (paramBitmap != null)
    {
      i = 1;
      if (paramInputStream == null) {
        break label40;
      }
    }
    for (;;)
    {
      if ((j ^ i) != 0) {
        break label46;
      }
      throw new AssertionError();
      i = 0;
      break;
      label40:
      j = 0;
    }
    label46:
    b = paramBitmap;
    c = paramInputStream;
    a = ((bpd.d)bpo.a(paramd, "loadedFrom == null"));
    d = paramInt;
  }
  
  public bpi$a(InputStream paramInputStream, bpd.d paramd)
  {
    this(null, (InputStream)bpo.a(paramInputStream, "stream == null"), paramd, 0);
  }
}

/* Location:
 * Qualified Name:     bpi.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */