import android.graphics.Bitmap;
import android.os.AsyncTask;
import java.util.List;

public final class ahx$a
  extends AsyncTask<Void, Void, Bitmap>
{
  private final Bitmap b;
  private final ahx.b c;
  private final List<ahv> d;
  private final avq e;
  
  public ahx$a(Bitmap paramBitmap, @cgb ahx.b paramb, @cgb List<ahv> paramList)
  {
    this(paramBitmap, paramb, paramList, localList, avq.a());
  }
  
  private ahx$a(Bitmap paramBitmap, @cgb ahx.b paramb, @cgb List<ahv> paramList, @cgb avq paramavq)
  {
    b = ((Bitmap)ck.a(paramb));
    c = ((ahx.b)ck.a(paramList));
    d = ((List)ck.a(paramavq));
    Object localObject;
    e = ((avq)ck.a(localObject));
  }
}

/* Location:
 * Qualified Name:     ahx.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */