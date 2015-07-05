import android.content.Intent;
import android.text.TextUtils;
import android.util.Pair;
import com.google.gson.annotations.SerializedName;
import com.snapchat.android.util.debug.ReleaseManager;
import java.util.List;

public final class anf
  extends amd
  implements ts.b<anf.b>
{
  public boolean a;
  public bkt b;
  private final String c;
  private String d;
  private String e;
  private ajx f;
  private aya g;
  private aol k;
  
  public anf(Intent paramIntent)
  {
    this(paramIntent, ajx.a(), aya.a(), aol.a());
  }
  
  private anf(Intent paramIntent, ajx paramajx, aya paramaya, aol paramaol)
  {
    super(paramIntent);
    f = paramajx;
    g = paramaya;
    c = paramIntent.getStringExtra("action");
    d = paramIntent.getStringExtra("code");
    e = paramIntent.getStringExtra("type");
    f = ajx.a();
    k = paramaol;
    a(anf.b.class, this);
  }
  
  public final Object b()
  {
    anf.a locala = (anf.a)a(new anf.a().a(c).b(d).i(e));
    if ((TextUtils.equals(c, "verifyPhoneNumber")) && (TextUtils.equals(e, TWO_FA_TYPEvalue)))
    {
      locala.j(ajx.l());
      Pair localPair = g.a(ajx.l(), locala.a(), locala.b());
      if (localPair == null) {
        break label118;
      }
      locala.k((String)first);
      locala.l((String)second);
    }
    label118:
    while (!ReleaseManager.f()) {
      return locala;
    }
    throw new RuntimeException("null deviceTokenAndSignaturePair");
  }
  
  protected final String e()
  {
    return "/bq/phone_verify";
  }
  
  @tn
  final class a
    extends bks
  {
    a() {}
  }
  
  public class b
    extends bkt
  {
    @SerializedName("two_fa_verified_devices")
    List<bkq> a;
  }
}

/* Location:
 * Qualified Name:     anf
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */