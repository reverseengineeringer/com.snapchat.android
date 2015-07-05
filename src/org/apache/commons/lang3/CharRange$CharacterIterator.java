package org.apache.commons.lang3;

import java.util.Iterator;
import java.util.NoSuchElementException;

class CharRange$CharacterIterator
  implements Iterator<Character>
{
  private char current;
  private boolean hasNext;
  private final CharRange range;
  
  private CharRange$CharacterIterator(CharRange paramCharRange)
  {
    range = paramCharRange;
    hasNext = true;
    if (CharRange.access$100(range))
    {
      if (CharRange.access$200(range) == 0)
      {
        if (CharRange.access$300(range) == 65535)
        {
          hasNext = false;
          return;
        }
        current = ((char)(CharRange.access$300(range) + '\001'));
        return;
      }
      current = '\000';
      return;
    }
    current = CharRange.access$200(range);
  }
  
  private void prepareNext()
  {
    if (CharRange.access$100(range))
    {
      if (current != 65535) {
        if (current + '\001' == CharRange.access$200(range))
        {
          if (CharRange.access$300(range) != 65535) {
            current = ((char)(CharRange.access$300(range) + '\001'));
          }
        }
        else {
          current = ((char)(current + '\001'));
        }
      }
    }
    else if (current < CharRange.access$300(range))
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

/* Location:
 * Qualified Name:     org.apache.commons.lang3.CharRange.CharacterIterator
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */