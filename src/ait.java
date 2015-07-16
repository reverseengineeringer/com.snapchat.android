import android.graphics.Bitmap;
import android.os.AsyncTask;
import com.snapchat.android.analytics.framework.EasyMetric.EasyMetricFactory;
import java.util.List;
import java.util.concurrent.ExecutorService;

public final class ait
{
  private static String c = "CONSTRUCTED_DYANMIC_GEOFILTER_DELAY";
  public final ExecutorService a;
  private final EasyMetric.EasyMetricFactory b;
  
  public ait(ExecutorService paramExecutorService)
  {
    this(paramExecutorService, new EasyMetric.EasyMetricFactory());
  }
  
  private ait(ExecutorService paramExecutorService, EasyMetric.EasyMetricFactory paramEasyMetricFactory)
  {
    a = paramExecutorService;
    b = paramEasyMetricFactory;
  }
  
  public final class a
    extends AsyncTask<Void, Void, Bitmap>
  {
    private final Bitmap b;
    private final ait.b c;
    private final List<air> d;
    private final awo e;
    
    public a(@chc ait.b paramb, @chc List<air> paramList)
    {
      this(paramb, paramList, localList, awo.a());
    }
    
    private a(@chc ait.b paramb, @chc List<air> paramList, @chc awo paramawo)
    {
      b = ((Bitmap)co.a(paramb));
      c = ((ait.b)co.a(paramList));
      d = ((List)co.a(paramawo));
      Object localObject;
      e = ((awo)co.a(localObject));
    }
  }
  
  public static abstract interface b
  {
    public abstract void a(Bitmap paramBitmap);
  }
}

/* Location:
 * Qualified Name:     ait
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */