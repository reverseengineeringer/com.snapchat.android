package org.apache.commons.lang3.text;

import java.io.Writer;

class StrBuilder$StrBuilderWriter
  extends Writer
{
  StrBuilder$StrBuilderWriter(StrBuilder paramStrBuilder) {}
  
  public void close() {}
  
  public void flush() {}
  
  public void write(int paramInt)
  {
    this$0.append((char)paramInt);
  }
  
  public void write(String paramString)
  {
    this$0.append(paramString);
  }
  
  public void write(String paramString, int paramInt1, int paramInt2)
  {
    this$0.append(paramString, paramInt1, paramInt2);
  }
  
  public void write(char[] paramArrayOfChar)
  {
    this$0.append(paramArrayOfChar);
  }
  
  public void write(char[] paramArrayOfChar, int paramInt1, int paramInt2)
  {
    this$0.append(paramArrayOfChar, paramInt1, paramInt2);
  }
}

/* Location:
 * Qualified Name:     org.apache.commons.lang3.text.StrBuilder.StrBuilderWriter
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */