package org.apache.commons.codec.language;

abstract class ColognePhonetic$CologneBuffer
{
  protected final char[] data;
  protected int length = 0;
  
  public ColognePhonetic$CologneBuffer(ColognePhonetic paramColognePhonetic, int paramInt)
  {
    data = new char[paramInt];
    length = 0;
  }
  
  public ColognePhonetic$CologneBuffer(ColognePhonetic paramColognePhonetic, char[] paramArrayOfChar)
  {
    data = paramArrayOfChar;
    length = paramArrayOfChar.length;
  }
  
  protected abstract char[] copyData(int paramInt1, int paramInt2);
  
  public int length()
  {
    return length;
  }
  
  public String toString()
  {
    return new String(copyData(0, length));
  }
}

/* Location:
 * Qualified Name:     org.apache.commons.codec.language.ColognePhonetic.CologneBuffer
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */