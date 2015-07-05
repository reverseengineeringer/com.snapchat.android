import android.os.Bundle;
import com.snapchat.android.analytics.framework.EasyMetric.EasyMetricFactory;
import com.snapchat.android.discover.model.DSnapPage;
import java.util.Timer;
import org.json.JSONObject;

public final class ack
  extends mm<DSnapPage>
{
  public static String a = "discover";
  
  public ack(@cgb DSnapPage paramDSnapPage, @cgb mm.a<DSnapPage> parama)
  {
    this(mj.a(), new EasyMetric.EasyMetricFactory(), ale.a(), new Timer(), paramDSnapPage, parama);
  }
  
  private ack(mj parammj, EasyMetric.EasyMetricFactory paramEasyMetricFactory, ale paramale, Timer paramTimer, DSnapPage paramDSnapPage, mm.a<DSnapPage> parama)
  {
    super(paramDSnapPage, parammj, paramEasyMetricFactory, paramale, paramTimer, parama);
  }
  
  public final Bundle a(String paramString)
  {
    Bundle localBundle = new Bundle();
    paramString = new JSONObject(paramString);
    boolean bool = true;
    if (paramString.has("media_zipped_with_overlay")) {
      bool = paramString.getBoolean("media_zipped_with_overlay");
    }
    localBundle.putBoolean("media_zipped_with_overlay", bool);
    localBundle.putString("content", paramString.getString("content"));
    localBundle.putString("imp-url", paramString.getString("imp-url"));
    return localBundle;
  }
  
  protected final String a()
  {
    return a;
  }
}

/* Location:
 * Qualified Name:     ack
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */