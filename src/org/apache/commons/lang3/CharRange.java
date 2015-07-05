package org.apache.commons.lang3;

import java.io.Serializable;
import java.util.Iterator;
import java.util.NoSuchElementException;

final class CharRange
  implements Serializable, Iterable<Character>
{
  private static final long serialVersionUID = 8270183163158333422L;
  private final char end;
  private transient String iToString;
  private final boolean negated;
  private final char start;
  
  private CharRange(char paramChar1, char paramChar2, boolean paramBoolean)
  {
    char c;
    if (paramChar1 > paramChar2)
    {
      c = paramChar2;
      paramChar2 = paramChar1;
    }
    for (;;)
    {
      start = c;
      end = paramChar2;
      negated = paramBoolean;
      return;
      c = paramChar1;
    }
  }
  
  public static CharRange is(char paramChar)
  {
    return new CharRange(paramChar, paramChar, false);
  }
  
  public static CharRange isIn(char paramChar1, char paramChar2)
  {
    return new CharRange(paramChar1, paramChar2, false);
  }
  
  public static CharRange isNot(char paramChar)
  {
    return new CharRange(paramChar, paramChar, true);
  }
  
  public static CharRange isNotIn(char paramChar1, char paramChar2)
  {
    return new CharRange(paramChar1, paramChar2, true);
  }
  
  public final boolean contains(char paramChar)
  {
    if ((paramChar >= start) && (paramChar <= end)) {}
    for (int i = 1; i != negated; i = 0) {
      return true;
    }
    return false;
  }
  
  public final boolean contains(CharRange paramCharRange)
  {
    if (paramCharRange == null) {
      throw new IllegalArgumentException("The Range must not be null");
    }
    if (negated) {
      if (negated) {
        if ((start < start) || (end > end)) {}
      }
    }
    do
    {
      do
      {
        do
        {
          return true;
          return false;
        } while ((end < start) || (start > end));
        return false;
        if (!negated) {
          break;
        }
      } while ((start == 0) && (end == 65535));
      return false;
    } while ((start <= start) && (end >= end));
    return false;
  }
  
  public final boolean equals(Object paramObject)
  {
    if (paramObject == this) {}
    do
    {
      return true;
      if (!(paramObject instanceof CharRange)) {
        return false;
      }
      paramObject = (CharRange)paramObject;
    } while ((start == start) && (end == end) && (negated == negated));
    return false;
  }
  
  public final char getEnd()
  {
    return end;
  }
  
  public final char getStart()
  {
    return start;
  }
  
  public final int hashCode()
  {
    int j = start;
    int k = end;
    if (negated) {}
    for (int i = 1;; i = 0) {
      return i + (k * 7 + (j + 83));
    }
  }
  
  public final boolean isNegated()
  {
    return negated;
  }
  
  public final Iterator<Character> iterator()
  {
    return new CharacterIterator(this, null);
  }
  
  public final String toString()
  {
    if (iToString == null)
    {
      StringBuilder localStringBuilder = new StringBuilder(4);
      if (isNegated()) {
        localStringBuilder.append('^');
      }
      localStringBuilder.append(start);
      if (start != end)
      {
        localStringBuilder.append('-');
        localStringBuilder.append(end);
      }
      iToString = localStringBuilder.toString();
    }
    return iToString;
  }
  
  static class CharacterIterator
    implements Iterator<Character>
  {
    private char current;
    private boolean hasNext;
    private final CharRange range;
    
    private CharacterIterator(CharRange paramCharRange)
    {
      range = paramCharRange;
      hasNext = true;
      if (range.negated)
      {
        if (range.start == 0)
        {
          if (range.end == 65535)
          {
            hasNext = false;
            return;
          }
          current = ((char)(range.end + '\001'));
          return;
        }
        current = '\000';
        return;
      }
      current = range.start;
    }
    
    private void prepareNext()
    {
      if (range.negated)
      {
        if (current != 65535) {
          if (current + '\001' == range.start)
          {
            if (range.end != 65535) {
              current = ((char)(range.end + '\001'));
            }
          }
          else {
            current = ((char)(current + '\001'));
          }
        }
      }
      else if (current < range.end)
      {
        current = ((char)(current + '\001'));
        return;
      }
      hasNext = false;
    }
    
    public boolean hasNext()
    {
      return hasNext;
    }
    
    public Character next()
    {
      if (!hasNext) {
        throw new NoSuchElementException();
      }
      char c = current;
      prepareNext();
      return Character.valueOf(c);
    }
    
    public void remove()
    {
      throw new UnsupportedOperationException();
    }
  }
}

/* Location:
 * Qualified Name:     org.apache.commons.lang3.CharRange
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */