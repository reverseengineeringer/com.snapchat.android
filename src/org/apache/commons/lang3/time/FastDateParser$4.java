package org.apache.commons.lang3.time;

final class FastDateParser$4
  extends FastDateParser.NumberStrategy
{
  FastDateParser$4(int paramInt)
  {
    super(paramInt);
  }
  
  final int modify(int paramInt)
  {
    return paramInt % 12;
  }
}

/* Location:
 * Qualified Name:     org.apache.commons.lang3.time.FastDateParser.4
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */