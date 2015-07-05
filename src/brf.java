import java.io.OutputStream;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONObject;

public final class brf
  implements brw
{
  private JSONObject a = new brl().a(new bro.c()).a(new bro.b()).a(new bro.f()).a(new bro.k()).a(new bro.n()).a(new bro.p()).a(new bro.u()).a(new bro.v()).a();
  private String b = brv.a.a();
  
  public final void a(OutputStream paramOutputStream)
  {
    HashMap localHashMap = new HashMap();
    localHashMap.put("app_state", a);
    paramOutputStream.write(new JSONObject(localHashMap).toString().getBytes());
  }
  
  public final String b()
  {
    return b;
  }
}

/* Location:
 * Qualified Name:     brf
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */