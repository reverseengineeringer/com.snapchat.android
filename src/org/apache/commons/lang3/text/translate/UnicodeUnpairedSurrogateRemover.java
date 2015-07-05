package org.apache.commons.lang3.text.translate;

import java.io.Writer;

public class UnicodeUnpairedSurrogateRemover
  extends CodePointTranslator
{
  public boolean translate(int paramInt, Writer paramWriter)
  {
    return (paramInt >= 55296) && (paramInt <= 57343);
  }
}

/* Location:
 * Qualified Name:     org.apache.commons.lang3.text.translate.UnicodeUnpairedSurrogateRemover
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */