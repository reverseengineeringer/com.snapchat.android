package org.apache.commons.lang3.text.translate;

import java.io.Writer;

public class NumericEntityEscaper
  extends CodePointTranslator
{
  private final int above;
  private final int below;
  private final boolean between;
  
  public NumericEntityEscaper()
  {
    this(0, Integer.MAX_VALUE, true);
  }
  
  private NumericEntityEscaper(int paramInt1, int paramInt2, boolean paramBoolean)
  {
    below = paramInt1;
    above = paramInt2;
    between = paramBoolean;
  }
  
  public static NumericEntityEscaper above(int paramInt)
  {
    return outsideOf(0, paramInt);
  }
  
  public static NumericEntityEscaper below(int paramInt)
  {
    return outsideOf(paramInt, Integer.MAX_VALUE);
  }
  
  public static NumericEntityEscaper between(int paramInt1, int paramInt2)
  {
    return new NumericEntityEscaper(paramInt1, paramInt2, true);
  }
  
  public static NumericEntityEscaper outsideOf(int paramInt1, int paramInt2)
  {
    return new NumericEntityEscaper(paramInt1, paramInt2, false);
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
    paramWriter.write("&#");
    paramWriter.write(Integer.toString(paramInt, 10));
    paramWriter.write(59);
    return true;
  }
}

/* Location:
 * Qualified Name:     org.apache.commons.lang3.text.translate.NumericEntityEscaper
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */