import java.io.IOException;
import java.util.Iterator;
import java.util.Map.Entry;

public final class ck$a
{
  private final ck a;
  private final String b;
  
  private ck$a(ck paramck, String paramString)
  {
    a = paramck;
    b = ((String)co.a(paramString));
  }
  
  @cc
  public final StringBuilder a(StringBuilder paramStringBuilder, Iterator<? extends Map.Entry<?, ?>> paramIterator)
  {
    try
    {
      co.a(paramStringBuilder);
      if (paramIterator.hasNext())
      {
        Map.Entry localEntry = (Map.Entry)paramIterator.next();
        paramStringBuilder.append(a.a(localEntry.getKey()));
        paramStringBuilder.append(b);
        paramStringBuilder.append(a.a(localEntry.getValue()));
        while (paramIterator.hasNext())
        {
          paramStringBuilder.append(a.a);
          localEntry = (Map.Entry)paramIterator.next();
          paramStringBuilder.append(a.a(localEntry.getKey()));
          paramStringBuilder.append(b);
          paramStringBuilder.append(a.a(localEntry.getValue()));
        }
      }
      return paramStringBuilder;
    }
    catch (IOException paramStringBuilder)
    {
      throw new AssertionError(paramStringBuilder);
    }
  }
}

/* Location:
 * Qualified Name:     ck.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */