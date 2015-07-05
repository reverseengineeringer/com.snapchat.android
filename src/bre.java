import java.io.OutputStream;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public final class bre
  implements brw
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
  private String l = brv.a.a();
  
  public bre(Throwable paramThrowable, long paramLong)
  {
    brl localbrl = new brl();
    localbrl.a(new bro.a()).a(new bro.c()).a(new bro.b()).a(new bro.d()).a(new bro.e()).a(new bro.f()).a(new bro.i()).a(new bro.j()).a(new bro.h()).a(new bro.x()).a(new bro.y()).a(new bro.k()).a(new bro.l()).a(new bro.n()).a(new bro.m()).a(new bro.o()).a(new bro.p()).a(new bro.q()).a(new bro.r()).a(new bro.s()).a(new bro.t()).a(new bro.u()).a(new bro.v()).a(new bro.w());
    d = localbrl.a();
    e = new JSONObject();
    a = paramLong;
    g = a(paramThrowable);
    if (paramThrowable.getMessage() != null) {
      h = paramThrowable.getMessage();
    }
    i = "android";
    k = btj.a.a();
    j = new JSONArray();
    paramThrowable = b(paramThrowable);
    int n = paramThrowable.length;
    int m = 0;
    while (m < n)
    {
      localbrl = paramThrowable[m];
      j.put(localbrl);
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
  
  public final void a(brk parambrk)
  {
    f = brga;
  }
  
  public final void a(OutputStream paramOutputStream)
  {
    paramOutputStream.write(a().toString().getBytes());
  }
  
  public final void a(String paramString, brk parambrk)
  {
    parambrk = brga;
    try
    {
      e.put(paramString, parambrk);
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
 * Qualified Name:     bre
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */