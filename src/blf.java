import java.io.BufferedReader;

final class blf
{
  @cgb
  private final String a;
  
  blf(@cgb String paramString)
  {
    if (paramString == null) {
      throw new NullPointerException();
    }
    a = paramString;
  }
  
  @cgc
  static String b(@cgb BufferedReader paramBufferedReader)
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
  
  final long a(@cgb BufferedReader paramBufferedReader)
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
      localObject2 = cjv.a("yyyy-MM-dd HH:mm:ss");
      cjy localcjy = ((cjw)localObject2).b();
      localObject1 = ((cjw)localObject2).b(null);
      cjz localcjz = new cjz((cgf)localObject1, c, f, g);
      i = localcjy.a(localcjz, paramBufferedReader, 0);
      if (i >= 0)
      {
        if (i < paramBufferedReader.length()) {
          break label297;
        }
        long l = localcjz.a(paramBufferedReader);
        if ((d) && (c != null))
        {
          paramBufferedReader = ((cgf)localObject1).a(cgk.a(c.intValue()));
          paramBufferedReader = new cgg(l, paramBufferedReader);
          if (e == null) {
            break label294;
          }
          localObject1 = e;
          localObject1 = cgj.a(b.a((cgk)localObject1));
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
          paramBufferedReader = ((cgf)localObject1).a(b);
          break;
          label253:
          paramBufferedReader = new cgg(a, (cgf)localObject1);
        }
      }
      i ^= 0xFFFFFFFF;
    }
    label294:
    label297:
    for (;;)
    {
      throw new IllegalArgumentException(ckb.b(paramBufferedReader, i));
      localObject1 = localObject2;
      break;
      break label223;
    }
  }
}

/* Location:
 * Qualified Name:     blf
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */