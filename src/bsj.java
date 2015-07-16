import java.io.File;
import java.io.IOException;

public class bsj
{
  protected File a;
  
  public bsj(File paramFile)
  {
    a = paramFile;
  }
  
  public Object a()
  {
    try
    {
      String str = bui.b(a);
      return str;
    }
    catch (IOException localIOException) {}
    return "";
  }
}

/* Location:
 * Qualified Name:     bsj
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */