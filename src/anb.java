import android.content.Context;
import android.content.Intent;
import android.text.TextUtils;
import com.google.gson.annotations.SerializedName;
import java.util.Map;

public final class anb
  extends amd
  implements ts.b<anb.b>
{
  private final bgk a = new bgk();
  private aya b = aya.a();
  private String c;
  private String d;
  
  @cf
  public anb(Intent paramIntent)
  {
    super(paramIntent);
    a(anb.b.class, this);
  }
  
  public final void a(Context paramContext)
  {
    bgp.b();
    String str = b.c(true);
    if (!TextUtils.isEmpty(str))
    {
      c = str;
      super.a(paramContext);
    }
  }
  
  public final Object b()
  {
    String str = Long.toString(System.currentTimeMillis());
    return new anb.a(str, os.b(str), c);
  }
  
  public final String e()
  {
    return "/loq/and/register_exp";
  }
  
  @tn
  static final class a
  {
    @SerializedName("timestamp")
    String a;
    @SerializedName("req_token")
    String b;
    @SerializedName("device_unique_id")
    String c;
    
    public a(String paramString1, String paramString2, String paramString3)
    {
      a = paramString1;
      b = paramString2;
      c = paramString3;
    }
  }
  
  static class b
  {
    @SerializedName("study_settings")
    public Map<String, String> a;
  }
}

/* Location:
 * Qualified Name:     anb
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */