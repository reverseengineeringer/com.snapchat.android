import com.google.gson.Gson;
import com.google.gson.annotations.SerializedName;
import com.snapchat.android.database.ClientProperty;
import com.snapchat.android.database.OnboardingTooltip;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public final class qr
  extends tw
{
  private Map<String, String> mClientProperties = new HashMap();
  private List<String> mSeenTooltips = new ArrayList(1);
  
  public qr() {}
  
  public qr(OnboardingTooltip paramOnboardingTooltip)
  {
    mSeenTooltips.add(aug.a(paramOnboardingTooltip));
  }
  
  public final qr a(ClientProperty paramClientProperty, String paramString)
  {
    mClientProperties.put(aug.a(paramClientProperty), paramString);
    return this;
  }
  
  protected final String getPath()
  {
    return "/loq/update_user";
  }
  
  @ud
  public final class a
    extends qc
  {
    @SerializedName("client_properties")
    String clientProperties = aul.a().toJson(qr.b(qr.this));
    @SerializedName("seen_tooltips")
    String seenTooltips = aul.a().toJson(qr.a(qr.this));
    @SerializedName("username")
    String username = akr.l();
    
    public a() {}
  }
}

/* Location:
 * Qualified Name:     qr
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */