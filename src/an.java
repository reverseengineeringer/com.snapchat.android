import java.io.Closeable;

@fa
public class an
  extends ew
  implements Closeable
{
  private static fi a = fi.a(an.class);
  
  public an(ex paramex, al paramal)
  {
    initContainer(paramex, paramex.a(), paramal);
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