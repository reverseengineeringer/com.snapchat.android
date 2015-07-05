import java.io.IOException;
import java.util.Iterator;
import java.util.Map.Entry;

public final class ch$a
{
  private final ch a;
  private final String b;
  
  private ch$a(ch paramch, String paramString)
  {
    a = paramch;
    b = ((String)ck.a(paramString));
  }
  
  @cc
  public final StringBuilder a(StringBuilder paramStringBuilder, Iterator<? extends Map.Entry<?, ?>> paramIterator)
  {
    try
    {
      ck.a(paramStringBuilder);
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
 * Qualified Name:     ch.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */