import java.io.OutputStream;
import org.json.JSONArray;

public final class bsv
  extends bsi
{
  public static final bsv a = new bsv("session_start");
  private String b;
  private String c;
  private String d = bsw.a.a();
  
  public bsv(String paramString)
  {
    this(paramString, buk.a.a());
  }
  
  private bsv(String paramString1, String paramString2)
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
    bue.b();
    paramOutputStream.write(((String)localObject).getBytes());
  }
  
  public final String b()
  {
    return d;
  }
}

/* Location:
 * Qualified Name:     bsv
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */