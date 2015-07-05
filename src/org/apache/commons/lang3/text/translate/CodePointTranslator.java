package org.apache.commons.lang3.text.translate;

import java.io.Writer;

public abstract class CodePointTranslator
  extends CharSequenceTranslator
{
  public final int translate(CharSequence paramCharSequence, int paramInt, Writer paramWriter)
  {
    if (translate(Character.codePointAt(paramCharSequence, paramInt), paramWriter)) {
      return 1;
    }
    return 0;
  }
  
  public abstract boolean translate(int paramInt, Writer paramWriter);
}

/* Location:
 * Qualified Name:     org.apache.commons.lang3.text.translate.CodePointTranslator
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */