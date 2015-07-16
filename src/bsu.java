import java.io.File;
import java.io.FileInputStream;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONObject;

public final class bsu
  implements bsx
{
  private JSONObject a;
  private JSONObject b;
  private JSONArray c;
  private File d;
  private String e;
  
  public bsu(File paramFile, bsl parambsl1, bsl parambsl2, bsl parambsl3)
  {
    paramFile.exists();
    e = bsw.a.a();
    d = paramFile;
    a = new bsm().a(new bsp.c()).a(new bsp.b()).a(new bsp.d()).a(new bsp.f()).a(new bsp.j()).a(new bsp.h()).a(new bsp.x()).a(new bsp.y()).a(new bsp.k()).a(new bsp.p()).a(new bsp.m()).a(new bsp.q()).a(new bsp.u()).a(new bsp.v()).a();
    paramFile = new HashMap();
    paramFile.put("crashed_session", bsha);
    if (parambsl2.b() > 0) {
      paramFile.put("previous_session", bsha);
    }
    b = new JSONObject(paramFile);
    c = bsha;
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
    ((Map)localObject2).put("dmp_file", btf.a((byte[])localObject1));
    localHashMap.put("ndk_dmp_info", new JSONObject((Map)localObject2));
    paramOutputStream.write(new JSONObject(localHashMap).toString().getBytes());
  }
  
  public final String b()
  {
    return e;
  }
}

/* Location:
 * Qualified Name:     bsu
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */