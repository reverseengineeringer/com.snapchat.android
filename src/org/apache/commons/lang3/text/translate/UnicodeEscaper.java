package org.apache.commons.lang3.text.translate;

import java.io.Writer;

public class UnicodeEscaper
  extends CodePointTranslator
{
  private final int above;
  private final int below;
  private final boolean between;
  
  public UnicodeEscaper()
  {
    this(0, Integer.MAX_VALUE, true);
  }
  
  protected UnicodeEscaper(int paramInt1, int paramInt2, boolean paramBoolean)
  {
    below = paramInt1;
    above = paramInt2;
    between = paramBoolean;
  }
  
  public static UnicodeEscaper above(int paramInt)
  {
    return outsideOf(0, paramInt);
  }
  
  public static UnicodeEscaper below(int paramInt)
  {
    return outsideOf(paramInt, Integer.MAX_VALUE);
  }
  
  public static UnicodeEscaper between(int paramInt1, int paramInt2)
  {
    return new UnicodeEscaper(paramInt1, paramInt2, true);
  }
  
  public static UnicodeEscaper outsideOf(int paramInt1, int paramInt2)
  {
    return new UnicodeEscaper(paramInt1, paramInt2, false);
  }
  
  protected String toUtf16Escape(int paramInt)
  {
    return "\\u" + hex(paramInt);
  }
  
  public boolean translate(int paramInt, Writer paramWriter)
  {
    if (between)
    {
      if ((paramInt >= below) && (paramInt <= above)) {}
    }
    else {
      while ((paramInt >= below) && (paramInt <= above)) {
        return false;
      }
    }
    if (paramInt > 65535) {
      paramWriter.write(toUtf16Escape(paramInt));
    }
    for (;;)
    {
      return true;
      if (paramInt > 4095) {
        paramWriter.write("\\u" + hex(paramInt));
      } else if (paramInt > 255) {
        paramWriter.write("\\u0" + hex(paramInt));
      } else if (paramInt > 15) {
        paramWriter.write("\\u00" + hex(paramInt));
      } else {
        paramWriter.write("\\u000" + hex(paramInt));
      }
    }
  }
}

/* Location:
 * Qualified Name:     org.apache.commons.lang3.text.translate.UnicodeEscaper
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */