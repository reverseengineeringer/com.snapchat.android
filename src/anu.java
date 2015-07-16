import android.content.Context;
import android.content.Intent;
import com.google.gson.annotations.SerializedName;
import com.snapchat.android.analytics.framework.EasyMetric.EasyMetricFactory;

public final class anu
  extends ana
  implements ui.b<blg>
{
  public blg a;
  private final double b;
  private final double c;
  private final Float d;
  private final long e;
  private final String f;
  private final EasyMetric.EasyMetricFactory g = new EasyMetric.EasyMetricFactory();
  
  public anu(Intent paramIntent)
  {
    super(paramIntent);
    b = paramIntent.getDoubleExtra("lat", Double.MIN_VALUE);
    c = paramIntent.getDoubleExtra("long", Double.MIN_VALUE);
    float f1 = paramIntent.getFloatExtra("accuracyMeters", Float.MIN_VALUE);
    if (f1 != Float.MIN_VALUE) {}
    for (Float localFloat = Float.valueOf(f1);; localFloat = null)
    {
      d = localFloat;
      e = paramIntent.getLongExtra("totalPollingDurationMillis", Long.MIN_VALUE);
      f = paramIntent.getStringExtra("action");
      registerCallback(blg.class, this);
      return;
    }
  }
  
  public final void a(Context paramContext)
  {
    int j = 0;
    int i;
    if (Math.abs(b) > 90.0D) {
      i = j;
    }
    for (;;)
    {
      if (i != 0) {
        super.a(paramContext);
      }
      return;
      i = j;
      if (Math.abs(c) <= 180.0D)
      {
        i = j;
        if (e >= 0L) {
          if (!f.equals("update"))
          {
            i = j;
            if (!f.equals("delete")) {}
          }
          else
          {
            i = 1;
          }
        }
      }
    }
  }
  
  public final Object getRequestPayload()
  {
    return new anu.a(b, c, d, e, f);
  }
  
  protected final String l_()
  {
    return "/bq/and/find_nearby_friends";
  }
  
  @ud
  public final class a
    extends qc
  {
    @SerializedName("lat")
    Double a;
    @SerializedName("long")
    Double b;
    @SerializedName("accuracyMeters")
    Float c;
    @SerializedName("totalPollingDurationMillis")
    Long d;
    @SerializedName("action")
    String e;
    
    public a(double paramDouble1, double paramDouble2, Float paramFloat, long paramLong, String paramString)
    {
      a = Double.valueOf(paramDouble1);
      b = Double.valueOf(paramDouble2);
      c = paramFloat;
      d = Long.valueOf(paramLong);
      e = paramString;
    }
  }
}

/* Location:
 * Qualified Name:     anu
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */