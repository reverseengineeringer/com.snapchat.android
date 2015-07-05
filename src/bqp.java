import org.apache.http.ParseException;
import org.apache.http.StatusLine;
import org.apache.http.message.BasicLineParser;
import org.apache.http.message.ParserCursor;
import org.apache.http.util.CharArrayBuffer;

public final class bqp
  extends bqf
{
  private int d = -1;
  
  public bqp(bql parambql)
  {
    super(parambql);
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
  
  public final bqf b()
  {
    return new bqo(this, d);
  }
  
  public final bqf c()
  {
    return bqs.d;
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
 * Qualified Name:     bqp
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */