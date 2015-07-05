import java.lang.reflect.Modifier;

final class cfn
  extends cfj
  implements cfg
{
  Class d;
  
  cfn(int paramInt, String paramString, Class paramClass1, Class[] paramArrayOfClass1, String[] paramArrayOfString, Class[] paramArrayOfClass2, Class paramClass2)
  {
    super(paramInt, paramString, paramClass1, paramArrayOfClass1, paramArrayOfString, paramArrayOfClass2);
    d = paramClass2;
  }
  
  protected final String a(cfq paramcfq)
  {
    StringBuffer localStringBuffer = new StringBuffer();
    if (e == -1) {
      e = Integer.parseInt(a(0), 16);
    }
    int i = e;
    Object localObject;
    if (!d)
    {
      localObject = "";
      localStringBuffer.append((String)localObject);
      if (b)
      {
        if (d == null) {
          d = b(6);
        }
        localStringBuffer.append(paramcfq.a(d));
      }
      if (b) {
        localStringBuffer.append(" ");
      }
      localObject = c();
      if (g == null) {
        g = c().getName();
      }
      localStringBuffer.append(paramcfq.a((Class)localObject, g, e));
      localStringBuffer.append(".");
      if (f == null) {
        f = a(1);
      }
      localStringBuffer.append(f);
      localObject = a();
      if (localObject != null)
      {
        if (b) {
          break label290;
        }
        if (localObject.length != 0) {
          break label279;
        }
        localStringBuffer.append("()");
      }
      label211:
      localObject = b();
      if ((c) && (localObject != null) && (localObject.length != 0)) {
        break label316;
      }
    }
    for (;;)
    {
      return localStringBuffer.toString();
      localObject = Modifier.toString(i);
      if (((String)localObject).length() == 0)
      {
        localObject = "";
        break;
      }
      localObject = (String)localObject + " ";
      break;
      label279:
      localStringBuffer.append("(..)");
      break label211;
      label290:
      localStringBuffer.append("(");
      paramcfq.a(localStringBuffer, (Class[])localObject);
      localStringBuffer.append(")");
      break label211;
      label316:
      localStringBuffer.append(" throws ");
      paramcfq.a(localStringBuffer, (Class[])localObject);
    }
  }
}

/* Location:
 * Qualified Name:     cfn
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */