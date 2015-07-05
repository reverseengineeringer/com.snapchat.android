package org.apache.commons.lang3.text;

import java.io.Reader;

class StrBuilder$StrBuilderReader
  extends Reader
{
  private int mark;
  private int pos;
  
  StrBuilder$StrBuilderReader(StrBuilder paramStrBuilder) {}
  
  public void close() {}
  
  public void mark(int paramInt)
  {
    mark = pos;
  }
  
  public boolean markSupported()
  {
    return true;
  }
  
  public int read()
  {
    if (!ready()) {
      return -1;
    }
    StrBuilder localStrBuilder = this$0;
    int i = pos;
    pos = (i + 1);
    return localStrBuilder.charAt(i);
  }
  
  public int read(char[] paramArrayOfChar, int paramInt1, int paramInt2)
  {
    if ((paramInt1 < 0) || (paramInt2 < 0) || (paramInt1 > paramArrayOfChar.length) || (paramInt1 + paramInt2 > paramArrayOfChar.length) || (paramInt1 + paramInt2 < 0)) {
      throw new IndexOutOfBoundsException();
    }
    if (paramInt2 == 0) {
      return 0;
    }
    if (pos >= this$0.size()) {
      return -1;
    }
    int i = paramInt2;
    if (pos + paramInt2 > this$0.size()) {
      i = this$0.size() - pos;
    }
    this$0.getChars(pos, pos + i, paramArrayOfChar, paramInt1);
    pos += i;
    return i;
  }
  
  public boolean ready()
  {
    return pos < this$0.size();
  }
  
  public void reset()
  {
    pos = mark;
  }
  
  public long skip(long paramLong)
  {
    if (pos + paramLong > this$0.size()) {
      paramLong = this$0.size() - pos;
    }
    for (;;)
    {
      if (paramLong < 0L) {
        return 0L;
      }
      pos = ((int)(pos + paramLong));
      return paramLong;
    }
  }
}

/* Location:
 * Qualified Name:     org.apache.commons.lang3.text.StrBuilder.StrBuilderReader
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */