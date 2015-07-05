package org.apache.commons.lang3.text.translate;

public class JavaUnicodeEscaper
  extends UnicodeEscaper
{
  public JavaUnicodeEscaper(int paramInt1, int paramInt2, boolean paramBoolean)
  {
    super(paramInt1, paramInt2, paramBoolean);
  }
  
  public static JavaUnicodeEscaper above(int paramInt)
  {
    return outsideOf(0, paramInt);
  }
  
  public static JavaUnicodeEscaper below(int paramInt)
  {
    return outsideOf(paramInt, Integer.MAX_VALUE);
  }
  
  public static JavaUnicodeEscaper between(int paramInt1, int paramInt2)
  {
    return new JavaUnicodeEscaper(paramInt1, paramInt2, true);
  }
  
  public static JavaUnicodeEscaper outsideOf(int paramInt1, int paramInt2)
  {
    return new JavaUnicodeEscaper(paramInt1, paramInt2, false);
  }
  
  protected String toUtf16Escape(int paramInt)
  {
    char[] arrayOfChar = Character.toChars(paramInt);
    return "\\u" + hex(arrayOfChar[0]) + "\\u" + hex(arrayOfChar[1]);
  }
}

/* Location:
 * Qualified Name:     org.apache.commons.lang3.text.translate.JavaUnicodeEscaper
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */