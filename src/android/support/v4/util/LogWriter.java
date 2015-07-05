package android.support.v4.util;

import java.io.Writer;

public final class LogWriter
  extends Writer
{
  private StringBuilder mBuilder = new StringBuilder(128);
  private final String mTag;
  
  public LogWriter(String paramString)
  {
    mTag = paramString;
  }
  
  private void flushBuilder()
  {
    if (mBuilder.length() > 0) {
      mBuilder.delete(0, mBuilder.length());
    }
  }
  
  public final void close()
  {
    flushBuilder();
  }
  
  public final void flush()
  {
    flushBuilder();
  }
  
  public final void write(char[] paramArrayOfChar, int paramInt1, int paramInt2)
  {
    int i = 0;
    if (i < paramInt2)
    {
      char c = paramArrayOfChar[(paramInt1 + i)];
      if (c == '\n') {
        flushBuilder();
      }
      for (;;)
      {
        i += 1;
        break;
        mBuilder.append(c);
      }
    }
  }
}

/* Location:
 * Qualified Name:     android.support.v4.util.LogWriter
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */