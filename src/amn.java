import android.content.Intent;
import com.google.gson.annotations.SerializedName;
import com.snapchat.android.Timber;
import com.snapchat.android.analytics.ProfileEventAnalytics;
import com.snapchat.android.api2.framework.HttpMethod;

public final class amn
  extends amd
  implements ts.b<bjd>
{
  private final String a;
  private final ProfileEventAnalytics b;
  
  public amn(Intent paramIntent)
  {
    super(paramIntent);
    a = avb.a(paramIntent.getByteArrayExtra("snapTag"));
    Timber.c("SnapTagOperation", "SnapTag - " + a, new Object[0]);
    b = ProfileEventAnalytics.a();
    a(bjd.class, this);
  }
  
  public final Object b()
  {
    return new amn.a(a);
  }
  
  public final HttpMethod c()
  {
    return HttpMethod.POST;
  }
  
  protected final String e()
  {
    return "/bq/snaptag";
  }
  
  @tn
  public static final class a
    extends pl
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
 * Qualified Name:     amn
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */