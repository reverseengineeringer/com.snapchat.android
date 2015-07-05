import android.graphics.Bitmap;
import java.io.InputStream;

public final class bos$a
{
  final InputStream a;
  final Bitmap b;
  final boolean c;
  final long d;
  
  public bos$a(InputStream paramInputStream, boolean paramBoolean, long paramLong)
  {
    if (paramInputStream == null) {
      throw new IllegalArgumentException("Stream may not be null.");
    }
    a = paramInputStream;
    b = null;
    c = paramBoolean;
    d = paramLong;
  }
}

/* Location:
 * Qualified Name:     bos.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */