import java.io.OutputStream;
import org.json.JSONArray;

public final class bru
  extends brh
{
  public static final bru a = new bru("session_start");
  private String b;
  private String c;
  private String d = brv.a.a();
  
  public bru(String paramString)
  {
    this(paramString, btj.a.a());
  }
  
  private bru(String paramString1, String paramString2)
  {
    String str = paramString1;
    if (paramString1.length() > 140) {
      str = paramString1.substring(0, 140);
    }
    b = str;
    c = paramString2;
  }
  
  public final void a(OutputStream paramOutputStream)
  {
    Object localObject = new JSONArray();
    ((JSONArray)localObject).put(b);
    ((JSONArray)localObject).put(c);
    localObject = ((JSONArray)localObject).toString();
    btd.b();
    paramOutputStream.write(((String)localObject).getBytes());
  }
  
  public final String b()
  {
    return d;
  }
}

/* Location:
 * Qualified Name:     bru
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */