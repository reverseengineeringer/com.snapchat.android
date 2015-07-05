import android.graphics.Bitmap;
import android.os.AsyncTask;
import com.snapchat.android.analytics.framework.EasyMetric.EasyMetricFactory;
import java.util.List;
import java.util.concurrent.ExecutorService;

public final class ahx
{
  private static String c = "CONSTRUCTED_DYANMIC_GEOFILTER_DELAY";
  public final ExecutorService a;
  private final EasyMetric.EasyMetricFactory b;
  
  public ahx(ExecutorService paramExecutorService)
  {
    this(paramExecutorService, new EasyMetric.EasyMetricFactory());
  }
  
  private ahx(ExecutorService paramExecutorService, EasyMetric.EasyMetricFactory paramEasyMetricFactory)
  {
    a = paramExecutorService;
    b = paramEasyMetricFactory;
  }
  
  public final class a
    extends AsyncTask<Void, Void, Bitmap>
  {
    private final Bitmap b;
    private final ahx.b c;
    private final List<ahv> d;
    private final avq e;
    
    public a(@cgb ahx.b paramb, @cgb List<ahv> paramList)
    {
      this(paramb, paramList, localList, avq.a());
    }
    
    private a(@cgb ahx.b paramb, @cgb List<ahv> paramList, @cgb avq paramavq)
    {
      b = ((Bitmap)ck.a(paramb));
      c = ((ahx.b)ck.a(paramList));
      d = ((List)ck.a(paramavq));
      Object localObject;
      e = ((avq)ck.a(localObject));
    }
  }
  
  public static abstract interface b
  {
    public abstract void a(Bitmap paramBitmap);
  }
}

/* Location:
 * Qualified Name:     ahx
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */