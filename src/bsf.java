import java.io.OutputStream;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public final class bsf
  implements bsx
{
  public long a;
  public JSONArray b;
  public String c = "uhe";
  public JSONObject d;
  private JSONObject e;
  private JSONArray f;
  private String g;
  private String h = "";
  private String i;
  private JSONArray j;
  private String k;
  private String l = bsw.a.a();
  
  public bsf(Throwable paramThrowable, long paramLong)
  {
    bsm localbsm = new bsm();
    localbsm.a(new bsp.a()).a(new bsp.c()).a(new bsp.b()).a(new bsp.d()).a(new bsp.e()).a(new bsp.f()).a(new bsp.i()).a(new bsp.j()).a(new bsp.h()).a(new bsp.x()).a(new bsp.y()).a(new bsp.k()).a(new bsp.l()).a(new bsp.n()).a(new bsp.m()).a(new bsp.o()).a(new bsp.p()).a(new bsp.q()).a(new bsp.r()).a(new bsp.s()).a(new bsp.t()).a(new bsp.u()).a(new bsp.v()).a(new bsp.w());
    d = localbsm.a();
    e = new JSONObject();
    a = paramLong;
    g = a(paramThrowable);
    if (paramThrowable.getMessage() != null) {
      h = paramThrowable.getMessage();
    }
    i = "android";
    k = buk.a.a();
    j = new JSONArray();
    paramThrowable = b(paramThrowable);
    int n = paramThrowable.length;
    int m = 0;
    while (m < n)
    {
      localbsm = paramThrowable[m];
      j.put(localbsm);
      m += 1;
    }
  }
  
  private static String a(Throwable paramThrowable)
  {
    for (;;)
    {
      String str = paramThrowable.getClass().getName();
      Throwable localThrowable = paramThrowable.getCause();
      if ((localThrowable == null) || (localThrowable == paramThrowable)) {
        return str;
      }
      paramThrowable = localThrowable;
    }
  }
  
  private static String[] b(Throwable paramThrowable)
  {
    StringWriter localStringWriter = new StringWriter();
    PrintWriter localPrintWriter = new PrintWriter(localStringWriter);
    for (;;)
    {
      paramThrowable.printStackTrace(localPrintWriter);
      Throwable localThrowable = paramThrowable.getCause();
      if ((localThrowable == null) || (localThrowable == paramThrowable)) {
        return localStringWriter.toString().split("\n");
      }
      paramThrowable = localThrowable;
    }
  }
  
  public final JSONObject a()
  {
    HashMap localHashMap = new HashMap();
    localHashMap.put("app_state", d);
    localHashMap.put("breadcrumbs", e);
    localHashMap.put("current_thread_id", Long.valueOf(a));
    if (f != null) {
      localHashMap.put("endpoints", f);
    }
    localHashMap.put("exception_name", g);
    localHashMap.put("exception_reason", h);
    localHashMap.put("platform", i);
    if (b != null) {
      localHashMap.put("threads", b);
    }
    localHashMap.put("ts", k);
    String str2 = c;
    String str1 = str2;
    if (a != 1L) {
      str1 = str2 + "-bg";
    }
    localHashMap.put("type", str1);
    localHashMap.put("unsymbolized_stacktrace", j);
    return new JSONObject(localHashMap);
  }
  
  public final void a(bsl parambsl)
  {
    f = bsha;
  }
  
  public final void a(OutputStream paramOutputStream)
  {
    paramOutputStream.write(a().toString().getBytes());
  }
  
  public final void a(String paramString, bsl parambsl)
  {
    parambsl = bsha;
    try
    {
      e.put(paramString, parambsl);
      return;
    }
    catch (JSONException paramString) {}
  }
  
  public final String b()
  {
    return l;
  }
}

/* Location:
 * Qualified Name:     bsf
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */