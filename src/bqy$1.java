import java.util.Map;
import org.json.JSONObject;

final class bqy$1
  extends bss
{
  bqy$1(bqy parambqy1, bqy parambqy2) {}
  
  public final void a()
  {
    if (a.g.c()) {
      return;
    }
    bsg localbsg = new bsg(a);
    JSONObject localJSONObject = a.z.a();
    a.put("metadata", localJSONObject);
    new bsu(localbsg, new bsm(new bsl(b.w.i, "/android_v2/update_user_metadata").a()), new bsn(a.z)).run();
  }
}

/* Location:
 * Qualified Name:     bqy.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */