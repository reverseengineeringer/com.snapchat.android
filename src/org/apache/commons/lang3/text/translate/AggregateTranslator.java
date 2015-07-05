package org.apache.commons.lang3.text.translate;

import java.io.Writer;
import org.apache.commons.lang3.ArrayUtils;

public class AggregateTranslator
  extends CharSequenceTranslator
{
  private final CharSequenceTranslator[] translators;
  
  public AggregateTranslator(CharSequenceTranslator... paramVarArgs)
  {
    translators = ((CharSequenceTranslator[])ArrayUtils.clone(paramVarArgs));
  }
  
  public int translate(CharSequence paramCharSequence, int paramInt, Writer paramWriter)
  {
    CharSequenceTranslator[] arrayOfCharSequenceTranslator = translators;
    int j = arrayOfCharSequenceTranslator.length;
    int i = 0;
    while (i < j)
    {
      int k = arrayOfCharSequenceTranslator[i].translate(paramCharSequence, paramInt, paramWriter);
      if (k != 0) {
        return k;
      }
      i += 1;
    }
    return 0;
  }
}

/* Location:
 * Qualified Name:     org.apache.commons.lang3.text.translate.AggregateTranslator
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */