import android.content.Intent;
import android.text.TextUtils;
import android.util.Pair;
import com.google.gson.annotations.SerializedName;
import com.snapchat.android.util.debug.ReleaseManager;
import java.util.List;

public final class aoc
  extends ana
  implements ui.b<aoc.b>
{
  public boolean a;
  public blu b;
  private final String c;
  private String d;
  private String e;
  private akr f;
  private ayy g;
  private aph k;
  
  public aoc(Intent paramIntent)
  {
    this(paramIntent, akr.a(), ayy.a(), aph.a());
  }
  
  private aoc(Intent paramIntent, akr paramakr, ayy paramayy, aph paramaph)
  {
    super(paramIntent);
    f = paramakr;
    g = paramayy;
    c = paramIntent.getStringExtra("action");
    d = paramIntent.getStringExtra("code");
    e = paramIntent.getStringExtra("type");
    f = akr.a();
    k = paramaph;
    registerCallback(aoc.b.class, this);
  }
  
  public final Object getRequestPayload()
  {
    aoc.a locala = (aoc.a)buildAuthPayload(new aoc.a().a(c).b(d).i(e));
    if ((TextUtils.equals(c, "verifyPhoneNumber")) && (TextUtils.equals(e, TWO_FA_TYPEvalue)))
    {
      locala.j(akr.l());
      Pair localPair = g.a(akr.l(), locala.a(), locala.b());
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
  
  protected final String l_()
  {
    return "/bq/phone_verify";
  }
  
  @ud
  final class a
    extends blt
  {
    a() {}
  }
  
  public class b
    extends blu
  {
    @SerializedName("two_fa_verified_devices")
    List<blr> a;
  }
}

/* Location:
 * Qualified Name:     aoc
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */