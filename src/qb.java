import com.google.gson.Gson;
import com.google.gson.annotations.SerializedName;
import com.snapchat.android.database.ClientProperty;
import com.snapchat.android.database.OnboardingTooltip;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public final class qb
  extends tg
{
  private Map<String, String> mClientProperties = new HashMap();
  private List<String> mSeenTooltips = new ArrayList(1);
  
  public qb() {}
  
  public qb(OnboardingTooltip paramOnboardingTooltip)
  {
    mSeenTooltips.add(ath.a(paramOnboardingTooltip));
  }
  
  public final qb a(ClientProperty paramClientProperty, String paramString)
  {
    mClientProperties.put(ath.a(paramClientProperty), paramString);
    return this;
  }
  
  protected final String d()
  {
    return "/loq/update_user";
  }
  
  @tn
  public final class a
    extends pl
  {
    @SerializedName("client_properties")
    String clientProperties = atn.a().toJson(qb.b(qb.this));
    @SerializedName("seen_tooltips")
    String seenTooltips = atn.a().toJson(qb.a(qb.this));
    @SerializedName("username")
    String username = ajx.l();
    
    public a() {}
  }
}

/* Location:
 * Qualified Name:     qb
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */