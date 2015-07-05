package org.apache.commons.codec.language;

class ColognePhonetic$CologneInputBuffer
  extends ColognePhonetic.CologneBuffer
{
  public ColognePhonetic$CologneInputBuffer(ColognePhonetic paramColognePhonetic, char[] paramArrayOfChar)
  {
    super(paramColognePhonetic, paramArrayOfChar);
  }
  
  public void addLeft(char paramChar)
  {
    length += 1;
    data[getNextPos()] = paramChar;
  }
  
  protected char[] copyData(int paramInt1, int paramInt2)
  {
    char[] arrayOfChar = new char[paramInt2];
    System.arraycopy(data, data.length - length + paramInt1, arrayOfChar, 0, paramInt2);
    return arrayOfChar;
  }
  
  public char getNextChar()
  {
    return data[getNextPos()];
  }
  
  protected int getNextPos()
  {
    return data.length - length;
  }
  
  public char removeNext()
  {
    char c = getNextChar();
    length -= 1;
    return c;
  }
}

/* Location:
 * Qualified Name:     org.apache.commons.codec.language.ColognePhonetic.CologneInputBuffer
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */