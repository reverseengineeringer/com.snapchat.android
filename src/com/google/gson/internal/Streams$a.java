package com.google.gson.internal;

import java.io.Writer;

final class Streams$a
  extends Writer
{
  private final Appendable a;
  private final a b = new a();
  
  private Streams$a(Appendable paramAppendable)
  {
    a = paramAppendable;
  }
  
  public final void close() {}
  
  public final void flush() {}
  
  public final void write(int paramInt)
  {
    a.append((char)paramInt);
  }
  
  public final void write(char[] paramArrayOfChar, int paramInt1, int paramInt2)
  {
    b.a = paramArrayOfChar;
    a.append(b, paramInt1, paramInt1 + paramInt2);
  }
  
  static final class a
    implements CharSequence
  {
    char[] a;
    
    public final char charAt(int paramInt)
    {
      return a[paramInt];
    }
    
    public final int length()
    {
      return a.length;
    }
    
    public final CharSequence subSequence(int paramInt1, int paramInt2)
    {
      return new String(a, paramInt1, paramInt2 - paramInt1);
    }
  }
}

/* Location:
 * Qualified Name:     com.google.gson.internal.Streams.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */