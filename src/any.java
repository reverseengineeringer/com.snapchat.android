import android.content.Context;
import android.content.Intent;
import android.text.TextUtils;
import com.google.gson.annotations.SerializedName;
import java.util.Map;

public final class any
  extends ana
  implements ui.b<any.b>
{
  private final bhk a = new bhk();
  private ayy b = ayy.a();
  private String c;
  private String d;
  
  @cf
  public any(Intent paramIntent)
  {
    super(paramIntent);
    registerCallback(any.b.class, this);
  }
  
  public final void a(Context paramContext)
  {
    bhp.b();
    String str = b.c(true);
    if (!TextUtils.isEmpty(str))
    {
      c = str;
      super.a(paramContext);
    }
  }
  
  public final Object getRequestPayload()
  {
    String str = Long.toString(System.currentTimeMillis());
    return new any.a(str, pj.b(str), c);
  }
  
  public final String l_()
  {
    return "/loq/and/register_exp";
  }
  
  @ud
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
 * Qualified Name:     any
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */