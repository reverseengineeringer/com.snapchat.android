import android.os.Bundle;
import com.snapchat.android.analytics.framework.EasyMetric.EasyMetricFactory;
import com.snapchat.android.discover.model.DSnapPage;
import java.util.Timer;
import org.json.JSONObject;

public final class adk
  extends nd<DSnapPage>
{
  public static String a = "discover";
  
  public adk(@chc DSnapPage paramDSnapPage, @chc nd.a<DSnapPage> parama)
  {
    this(na.a(), new EasyMetric.EasyMetricFactory(), ama.a(), new Timer(), paramDSnapPage, parama);
  }
  
  private adk(na paramna, EasyMetric.EasyMetricFactory paramEasyMetricFactory, ama paramama, Timer paramTimer, DSnapPage paramDSnapPage, nd.a<DSnapPage> parama)
  {
    super(paramDSnapPage, paramna, paramEasyMetricFactory, paramama, paramTimer, parama);
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
 * Qualified Name:     adk
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */