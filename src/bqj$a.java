import android.graphics.Bitmap;
import java.io.InputStream;

public final class bqj$a
{
  final bqe.d a;
  final Bitmap b;
  final InputStream c;
  final int d;
  
  public bqj$a(Bitmap paramBitmap, bqe.d paramd)
  {
    this((Bitmap)bqp.a(paramBitmap, "bitmap == null"), null, paramd, 0);
  }
  
  bqj$a(Bitmap paramBitmap, InputStream paramInputStream, bqe.d paramd, int paramInt)
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
    a = ((bqe.d)bqp.a(paramd, "loadedFrom == null"));
    d = paramInt;
  }
  
  public bqj$a(InputStream paramInputStream, bqe.d paramd)
  {
    this(null, (InputStream)bqp.a(paramInputStream, "stream == null"), paramd, 0);
  }
}

/* Location:
 * Qualified Name:     bqj.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */