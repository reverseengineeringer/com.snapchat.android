import java.io.OutputStream;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONObject;

public final class bsg
  implements bsx
{
  private JSONObject a = new bsm().a(new bsp.c()).a(new bsp.b()).a(new bsp.f()).a(new bsp.k()).a(new bsp.n()).a(new bsp.p()).a(new bsp.u()).a(new bsp.v()).a();
  private String b = bsw.a.a();
  
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
 * Qualified Name:     bsg
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */