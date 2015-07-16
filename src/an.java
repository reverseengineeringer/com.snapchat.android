import java.io.Closeable;

@fj
public class an
  extends ff
  implements Closeable
{
  private static fr a = fr.a(an.class);
  
  public an(fg paramfg, al paramal)
  {
    initContainer(paramfg, paramfg.a(), paramal);
  }
  
  public static byte[] a(String paramString)
  {
    byte[] arrayOfByte = new byte[4];
    int i;
    if (paramString != null) {
      i = 0;
    }
    for (;;)
    {
      if (i >= Math.min(4, paramString.length())) {
        return arrayOfByte;
      }
      arrayOfByte[i] = ((byte)paramString.charAt(i));
      i += 1;
    }
  }
  
  public void close()
  {
    dataSource.close();
  }
  
  public String toString()
  {
    return "model(" + dataSource.toString() + ")";
  }
}

/* Location:
 * Qualified Name:     an
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */