import android.content.Intent;
import android.text.TextUtils;
import android.util.Pair;
import com.google.gson.annotations.SerializedName;
import com.snapchat.android.util.debug.ReleaseManager;
import java.util.List;

public final class anc
  extends amd
  implements ts.b<anc.b>
{
  public final String a;
  public anc.c b;
  final aya c;
  private final String d;
  private final String e;
  private final ajx f;
  private final aol g;
  
  public anc(Intent paramIntent)
  {
    this(paramIntent, ajx.a(), aya.a(), aol.a());
  }
  
  private anc(Intent paramIntent, ajx paramajx, aya paramaya, aol paramaol)
  {
    super(paramIntent);
    f = paramajx;
    c = paramaya;
    a = paramIntent.getStringExtra("action");
    d = paramIntent.getStringExtra("param");
    e = paramIntent.getStringExtra("password");
    g = paramaol;
    a(anc.b.class, this);
  }
  
  public final Object b()
  {
    return new anc.a(a, d, e);
  }
  
  protected final String e()
  {
    return "/ph/settings";
  }
  
  @tn
  public final class a
    extends pl
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
    
    public a(@cgb String paramString1, @cgb String paramString2, @cgc String paramString3)
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
          b = ajx.l();
          this$1 = c.a(ajx.l(), a(), b());
          if (anc.this != null)
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
    List<bkq> c;
  }
  
  public final class c
  {
    public boolean a;
    public final String b;
    public final String c;
    public final String d;
    List<bkq> e;
    
    public c(String paramString1, String paramString2, String paramString3, List<bkq> paramList)
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
 * Qualified Name:     anc
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */