import java.io.File;
import java.io.FileInputStream;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONObject;

public final class brt
  implements brw
{
  private JSONObject a;
  private JSONObject b;
  private JSONArray c;
  private File d;
  private String e;
  
  public brt(File paramFile, brk parambrk1, brk parambrk2, brk parambrk3)
  {
    paramFile.exists();
    e = brv.a.a();
    d = paramFile;
    a = new brl().a(new bro.c()).a(new bro.b()).a(new bro.d()).a(new bro.f()).a(new bro.j()).a(new bro.h()).a(new bro.x()).a(new bro.y()).a(new bro.k()).a(new bro.p()).a(new bro.m()).a(new bro.q()).a(new bro.u()).a(new bro.v()).a();
    paramFile = new HashMap();
    paramFile.put("crashed_session", brga);
    if (parambrk2.b() > 0) {
      paramFile.put("previous_session", brga);
    }
    b = new JSONObject(paramFile);
    c = brga;
  }
  
  public final void a(OutputStream paramOutputStream)
  {
    HashMap localHashMap = new HashMap();
    localHashMap.put("app_state", a);
    localHashMap.put("breadcrumbs", b);
    localHashMap.put("endpoints", c);
    Object localObject1 = new byte[0];
    byte[] arrayOfByte = new byte[' '];
    FileInputStream localFileInputStream = new FileInputStream(d);
    for (;;)
    {
      int i = localFileInputStream.read(arrayOfByte);
      if (i == -1) {
        break;
      }
      localObject2 = new byte[localObject1.length + i];
      System.arraycopy(localObject1, 0, localObject2, 0, localObject1.length);
      System.arraycopy(arrayOfByte, 0, localObject2, localObject1.length, i);
      localObject1 = localObject2;
    }
    localFileInputStream.close();
    Object localObject2 = new HashMap();
    ((Map)localObject2).put("dmp_name", d.getName());
    ((Map)localObject2).put("dmp_file", bse.a((byte[])localObject1));
    localHashMap.put("ndk_dmp_info", new JSONObject((Map)localObject2));
    paramOutputStream.write(new JSONObject(localHashMap).toString().getBytes());
  }
  
  public final String b()
  {
    return e;
  }
}

/* Location:
 * Qualified Name:     brt
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */