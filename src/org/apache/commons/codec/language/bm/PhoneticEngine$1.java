package org.apache.commons.codec.language.bm;

final class PhoneticEngine$1
  implements CharSequence
{
  PhoneticEngine$1(CharSequence paramCharSequence, CharSequence[][] paramArrayOfCharSequence) {}
  
  public final char charAt(int paramInt)
  {
    return val$cached.charAt(paramInt);
  }
  
  public final int length()
  {
    return val$cached.length();
  }
  
  public final CharSequence subSequence(int paramInt1, int paramInt2)
  {
    if (paramInt1 == paramInt2) {
      localObject = "";
    }
    CharSequence localCharSequence;
    do
    {
      return (CharSequence)localObject;
      localCharSequence = val$cache[paramInt1][(paramInt2 - 1)];
      localObject = localCharSequence;
    } while (localCharSequence != null);
    Object localObject = val$cached.subSequence(paramInt1, paramInt2);
    val$cache[paramInt1][(paramInt2 - 1)] = localObject;
    return (CharSequence)localObject;
  }
}

/* Location:
 * Qualified Name:     org.apache.commons.codec.language.bm.PhoneticEngine.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */