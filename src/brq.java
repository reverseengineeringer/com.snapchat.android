import org.apache.http.ParseException;
import org.apache.http.StatusLine;
import org.apache.http.message.BasicLineParser;
import org.apache.http.message.ParserCursor;
import org.apache.http.util.CharArrayBuffer;

public final class brq
  extends brg
{
  private int d = -1;
  
  public brq(brm parambrm)
  {
    super(parambrm);
  }
  
  public final boolean a(CharArrayBuffer paramCharArrayBuffer)
  {
    ParserCursor localParserCursor = new ParserCursor(0, paramCharArrayBuffer.length());
    try
    {
      paramCharArrayBuffer = BasicLineParser.DEFAULT.parseStatusLine(paramCharArrayBuffer, localParserCursor);
      d = paramCharArrayBuffer.getStatusCode();
      a.a(paramCharArrayBuffer.getStatusCode());
      return true;
    }
    catch (ParseException paramCharArrayBuffer) {}
    return false;
  }
  
  public final brg b()
  {
    return new brp(this, d);
  }
  
  public final brg c()
  {
    return brt.d;
  }
  
  protected final int d()
  {
    return 20;
  }
  
  protected final int e()
  {
    return 64;
  }
}

/* Location:
 * Qualified Name:     brq
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */