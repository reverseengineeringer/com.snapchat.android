package org.apache.commons.codec.language;

class ColognePhonetic$CologneOutputBuffer
  extends ColognePhonetic.CologneBuffer
{
  public ColognePhonetic$CologneOutputBuffer(ColognePhonetic paramColognePhonetic, int paramInt)
  {
    super(paramColognePhonetic, paramInt);
  }
  
  public void addRight(char paramChar)
  {
    data[length] = paramChar;
    length += 1;
  }
  
  protected char[] copyData(int paramInt1, int paramInt2)
  {
    char[] arrayOfChar = new char[paramInt2];
    System.arraycopy(data, paramInt1, arrayOfChar, 0, paramInt2);
    return arrayOfChar;
  }
}

/* Location:
 * Qualified Name:     org.apache.commons.codec.language.ColognePhonetic.CologneOutputBuffer
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */