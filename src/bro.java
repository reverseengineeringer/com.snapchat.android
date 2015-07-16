import org.apache.http.ParseException;
import org.apache.http.RequestLine;
import org.apache.http.message.BasicLineParser;
import org.apache.http.message.ParserCursor;
import org.apache.http.util.CharArrayBuffer;

public final class bro
  extends brg
{
  public bro(brm parambrm)
  {
    super(parambrm);
  }
  
  public final boolean a(CharArrayBuffer paramCharArrayBuffer)
  {
    ParserCursor localParserCursor = new ParserCursor(0, paramCharArrayBuffer.length());
    try
    {
      paramCharArrayBuffer = BasicLineParser.DEFAULT.parseRequestLine(paramCharArrayBuffer, localParserCursor);
      a.a(paramCharArrayBuffer.getMethod(), paramCharArrayBuffer.getUri());
      return true;
    }
    catch (ParseException paramCharArrayBuffer) {}
    return false;
  }
  
  public final brg b()
  {
    return new brn(this);
  }
  
  public final brg c()
  {
    return brt.d;
  }
  
  protected final int d()
  {
    return 64;
  }
  
  protected final int e()
  {
    return 2048;
  }
}

/* Location:
 * Qualified Name:     bro
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */