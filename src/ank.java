import android.content.Intent;
import com.google.gson.annotations.SerializedName;
import com.snapchat.android.analytics.ProfileEventAnalytics;
import com.snapchat.android.api2.framework.HttpMethod;

public final class ank
  extends ana
  implements ui.b<bke>
{
  private final String a;
  private final ProfileEventAnalytics b;
  
  public ank(Intent paramIntent)
  {
    super(paramIntent);
    a = avz.a(paramIntent.getByteArrayExtra("snapTag"));
    new StringBuilder("SnapTag - ").append(a);
    b = ProfileEventAnalytics.a();
    registerCallback(bke.class, this);
  }
  
  public final HttpMethod getMethod()
  {
    return HttpMethod.POST;
  }
  
  public final Object getRequestPayload()
  {
    return new ank.a(a);
  }
  
  protected final String l_()
  {
    return "/bq/snaptag";
  }
  
  @ud
  public static final class a
    extends qc
  {
    @SerializedName("snaptag")
    final String a;
    
    a(String paramString)
    {
      a = paramString;
    }
  }
}

/* Location:
 * Qualified Name:     ank
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */