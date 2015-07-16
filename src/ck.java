import java.io.IOException;
import java.util.Iterator;
import java.util.Map.Entry;
import javax.annotation.CheckReturnValue;
import javax.annotation.Nullable;

@cd
public class ck
{
  final String a;
  
  private ck(ck paramck)
  {
    a = a;
  }
  
  ck(String paramString)
  {
    a = ((String)co.a(paramString));
  }
  
  public static ck a(String paramString)
  {
    return new ck(paramString);
  }
  
  CharSequence a(Object paramObject)
  {
    co.a(paramObject);
    if ((paramObject instanceof CharSequence)) {
      return (CharSequence)paramObject;
    }
    return paramObject.toString();
  }
  
  public final StringBuilder a(StringBuilder paramStringBuilder, Iterator<?> paramIterator)
  {
    try
    {
      co.a(paramStringBuilder);
      if (paramIterator.hasNext())
      {
        paramStringBuilder.append(a(paramIterator.next()));
        while (paramIterator.hasNext())
        {
          paramStringBuilder.append(a);
          paramStringBuilder.append(a(paramIterator.next()));
        }
      }
      return paramStringBuilder;
    }
    catch (IOException paramStringBuilder)
    {
      throw new AssertionError(paramStringBuilder);
    }
  }
  
  @CheckReturnValue
  public ck b(final String paramString)
  {
    co.a(paramString);
    new ck(this, paramString)
    {
      final CharSequence a(@Nullable Object paramAnonymousObject)
      {
        if (paramAnonymousObject == null) {
          return paramString;
        }
        return ck.this.a(paramAnonymousObject);
      }
      
      public final ck b(String paramAnonymousString)
      {
        throw new UnsupportedOperationException("already specified useForNull");
      }
    };
  }
  
  public static final class a
  {
    private final ck a;
    private final String b;
    
    private a(ck paramck, String paramString)
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
}

/* Location:
 * Qualified Name:     ck
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */