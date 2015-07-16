import android.graphics.Bitmap;
import android.net.Uri;
import java.io.IOException;
import java.io.InputStream;

public abstract interface bpt
{
  public abstract bpt.a a(Uri paramUri, int paramInt);
  
  public abstract void a();
  
  public static final class a
  {
    final InputStream a;
    final Bitmap b;
    final boolean c;
    final long d;
    
    public a(InputStream paramInputStream, boolean paramBoolean, long paramLong)
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
  
  public static final class b
    extends IOException
  {
    final boolean a;
    final int b;
    
    public b(String paramString, int paramInt1, int paramInt2)
    {
      super();
      a = bqb.c(paramInt1);
      b = paramInt2;
    }
  }
}

/* Location:
 * Qualified Name:     bpt
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */