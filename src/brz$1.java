import java.util.Map;
import org.json.JSONObject;

final class brz$1
  extends btt
{
  brz$1(brz parambrz1, brz parambrz2) {}
  
  public final void a()
  {
    if (a.g.c()) {
      return;
    }
    bth localbth = new bth(a);
    JSONObject localJSONObject = a.z.a();
    a.put("metadata", localJSONObject);
    new btv(localbth, new btn(new btm(b.w.i, "/android_v2/update_user_metadata").a()), new bto(a.z)).run();
  }
}

/* Location:
 * Qualified Name:     brz.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */