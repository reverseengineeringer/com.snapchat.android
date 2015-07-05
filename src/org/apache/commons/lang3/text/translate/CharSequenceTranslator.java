package org.apache.commons.lang3.text.translate;

import java.io.IOException;
import java.io.StringWriter;
import java.io.Writer;
import java.util.Locale;

public abstract class CharSequenceTranslator
{
  public static String hex(int paramInt)
  {
    return Integer.toHexString(paramInt).toUpperCase(Locale.ENGLISH);
  }
  
  public abstract int translate(CharSequence paramCharSequence, int paramInt, Writer paramWriter);
  
  public final String translate(CharSequence paramCharSequence)
  {
    if (paramCharSequence == null) {
      return null;
    }
    try
    {
      StringWriter localStringWriter = new StringWriter(paramCharSequence.length() * 2);
      translate(paramCharSequence, localStringWriter);
      paramCharSequence = localStringWriter.toString();
      return paramCharSequence;
    }
    catch (IOException paramCharSequence)
    {
      throw new RuntimeException(paramCharSequence);
    }
  }
  
  public final void translate(CharSequence paramCharSequence, Writer paramWriter)
  {
    if (paramWriter == null) {
      throw new IllegalArgumentException("The Writer must not be null");
    }
    if (paramCharSequence == null) {}
    for (;;)
    {
      return;
      int k = paramCharSequence.length();
      int i = 0;
      while (i < k)
      {
        int m = translate(paramCharSequence, i, paramWriter);
        if (m == 0)
        {
          char[] arrayOfChar = Character.toChars(Character.codePointAt(paramCharSequence, i));
          paramWriter.write(arrayOfChar);
          i += arrayOfChar.length;
        }
        else
        {
          int j = 0;
          while (j < m)
          {
            i += Character.charCount(Character.codePointAt(paramCharSequence, i));
            j += 1;
          }
        }
      }
    }
  }
  
  public final CharSequenceTranslator with(CharSequenceTranslator... paramVarArgs)
  {
    CharSequenceTranslator[] arrayOfCharSequenceTranslator = new CharSequenceTranslator[paramVarArgs.length + 1];
    arrayOfCharSequenceTranslator[0] = this;
    System.arraycopy(paramVarArgs, 0, arrayOfCharSequenceTranslator, 1, paramVarArgs.length);
    return new AggregateTranslator(arrayOfCharSequenceTranslator);
  }
}

/* Location:
 * Qualified Name:     org.apache.commons.lang3.text.translate.CharSequenceTranslator
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */