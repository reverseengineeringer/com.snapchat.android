import android.content.Intent;
import android.text.TextUtils;
import android.util.Pair;
import com.google.gson.annotations.SerializedName;
import com.snapchat.android.util.debug.ReleaseManager;
import java.util.List;

public final class anz
  extends ana
  implements ui.b<anz.b>
{
  public final String a;
  public anz.c b;
  final ayy c;
  private final String d;
  private final String e;
  private final akr f;
  private final aph g;
  
  public anz(Intent paramIntent)
  {
    this(paramIntent, akr.a(), ayy.a(), aph.a());
  }
  
  private anz(Intent paramIntent, akr paramakr, ayy paramayy, aph paramaph)
  {
    super(paramIntent);
    f = paramakr;
    c = paramayy;
    a = paramIntent.getStringExtra("action");
    d = paramIntent.getStringExtra("param");
    e = paramIntent.getStringExtra("password");
    g = paramaph;
    registerCallback(anz.b.class, this);
  }
  
  public final Object getRequestPayload()
  {
    return new anz.a(a, d, e);
  }
  
  protected final String l_()
  {
    return "/ph/settings";
  }
  
  @ud
  public final class a
    extends qc
  {
    @SerializedName("action")
    String a;
    @SerializedName("password")
    String b;
    @SerializedName("phoneNumber")
    String c;
    @SerializedName("code")
    String d;
    @SerializedName("deviceid")
    String e;
    @SerializedName("dtoken1i")
    String f;
    @SerializedName("dsig")
    String g;
    
    public a(@chc String paramString1, @chc String paramString2, @chd String paramString3)
    {
      a = paramString1;
      if (TextUtils.equals(a, "pwConfirmPhoneNumber"))
      {
        c = paramString2;
        b = paramString3;
      }
      do
      {
        do
        {
          return;
          if (!TextUtils.equals(a, "enableTwoFA")) {
            break;
          }
          d = paramString2;
          b = akr.l();
          this$1 = c.a(akr.l(), a(), b());
          if (anz.this != null)
          {
            f = ((String)first);
            g = ((String)second);
            return;
          }
        } while (!ReleaseManager.f());
        throw new RuntimeException("null deviceTokenAndSignaturePair");
      } while (!TextUtils.equals(a, "twoFAForgetOneDevice"));
      e = paramString2;
    }
  }
  
  public class b
  {
    @SerializedName("logged")
    boolean a;
    @SerializedName("message")
    String b;
    @SerializedName("two_fa_verified_devices")
    List<blr> c;
  }
  
  public final class c
  {
    public boolean a;
    public final String b;
    public final String c;
    public final String d;
    List<blr> e;
    
    public c(String paramString1, String paramString2, String paramString3, List<blr> paramList)
    {
      a = paramString1;
      b = paramString2;
      c = paramString3;
      d = paramList;
      List localList;
      e = localList;
    }
  }
}

/* Location:
 * Qualified Name:     anz
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */