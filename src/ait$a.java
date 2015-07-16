import android.graphics.Bitmap;
import android.os.AsyncTask;
import java.util.List;

public final class ait$a
  extends AsyncTask<Void, Void, Bitmap>
{
  private final Bitmap b;
  private final ait.b c;
  private final List<air> d;
  private final awo e;
  
  public ait$a(Bitmap paramBitmap, @chc ait.b paramb, @chc List<air> paramList)
  {
    this(paramBitmap, paramb, paramList, localList, awo.a());
  }
  
  private ait$a(Bitmap paramBitmap, @chc ait.b paramb, @chc List<air> paramList, @chc awo paramawo)
  {
    b = ((Bitmap)co.a(paramb));
    c = ((ait.b)co.a(paramList));
    d = ((List)co.a(paramawo));
    Object localObject;
    e = ((awo)co.a(localObject));
  }
}

/* Location:
 * Qualified Name:     ait.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */