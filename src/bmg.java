import java.io.BufferedReader;

final class bmg
{
  @chc
  private final String a;
  
  bmg(@chc String paramString)
  {
    if (paramString == null) {
      throw new NullPointerException();
    }
    a = paramString;
  }
  
  @chd
  static String b(@chc BufferedReader paramBufferedReader)
  {
    String str;
    do
    {
      str = paramBufferedReader.readLine();
    } while ((str != null) && (!str.matches("\"main\" .*")));
    do
    {
      str = paramBufferedReader.readLine();
    } while ((str != null) && (str.matches("  \\| .*")));
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("AppNotRespondingError\n");
    while ((str != null) && (!str.matches(" *")))
    {
      localStringBuilder.append(str);
      localStringBuilder.append('\n');
      str = paramBufferedReader.readLine();
    }
    return localStringBuilder.toString();
  }
  
  final long a(@chc BufferedReader paramBufferedReader)
  {
    Object localObject1 = "";
    Object localObject2 = paramBufferedReader.readLine();
    if (localObject2 == null) {
      return -1L;
    }
    int i;
    if (((String)localObject2).equals("Cmd line: " + a))
    {
      paramBufferedReader = localObject1.split("----- .*at ")[1].split(" -----")[0];
      localObject2 = ckw.a("yyyy-MM-dd HH:mm:ss");
      ckz localckz = ((ckx)localObject2).b();
      localObject1 = ((ckx)localObject2).b(null);
      cla localcla = new cla((chg)localObject1, c, f, g);
      i = localckz.a(localcla, paramBufferedReader, 0);
      if (i >= 0)
      {
        if (i < paramBufferedReader.length()) {
          break label297;
        }
        long l = localcla.a(paramBufferedReader);
        if ((d) && (c != null))
        {
          paramBufferedReader = ((chg)localObject1).a(chl.a(c.intValue()));
          paramBufferedReader = new chh(l, paramBufferedReader);
          if (e == null) {
            break label294;
          }
          localObject1 = e;
          localObject1 = chk.a(b.a((chl)localObject1));
          if (localObject1 != b) {
            break label253;
          }
        }
        for (;;)
        {
          label223:
          return a;
          paramBufferedReader = (BufferedReader)localObject1;
          if (b == null) {
            break;
          }
          paramBufferedReader = ((chg)localObject1).a(b);
          break;
          label253:
          paramBufferedReader = new chh(a, (chg)localObject1);
        }
      }
      i ^= 0xFFFFFFFF;
    }
    label294:
    label297:
    for (;;)
    {
      throw new IllegalArgumentException(clc.b(paramBufferedReader, i));
      localObject1 = localObject2;
      break;
      break label223;
    }
  }
}

/* Location:
 * Qualified Name:     bmg
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */