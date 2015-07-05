import java.io.IOException;
import java.util.Iterator;
import java.util.Map.Entry;
import javax.annotation.CheckReturnValue;
import javax.annotation.Nullable;

@cd
public class ch
{
  final String a;
  
  private ch(ch paramch)
  {
    a = a;
  }
  
  public ch(String paramString)
  {
    a = ((String)ck.a(paramString));
  }
  
  @CheckReturnValue
  public ch a(final String paramString)
  {
    ck.a(paramString);
    new ch(this, paramString)
    {
      public final ch a(String paramAnonymousString)
      {
        throw new UnsupportedOperationException("already specified useForNull");
      }
      
      final CharSequence a(@Nullable Object paramAnonymousObject)
      {
        if (paramAnonymousObject == null) {
          return paramString;
        }
        return ch.this.a(paramAnonymousObject);
      }
    };
  }
  
  CharSequence a(Object paramObject)
  {
    ck.a(paramObject);
    if ((paramObject instanceof CharSequence)) {
      return (CharSequence)paramObject;
    }
    return paramObject.toString();
  }
  
  public static final class a
  {
    private final ch a;
    private final String b;
    
    private a(ch paramch, String paramString)
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
}

/* Location:
 * Qualified Name:     ch
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */