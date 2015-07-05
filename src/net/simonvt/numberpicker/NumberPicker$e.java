package net.simonvt.numberpicker;

import android.text.Spanned;
import android.text.TextUtils;
import android.text.method.NumberKeyListener;

final class NumberPicker$e
  extends NumberKeyListener
{
  NumberPicker$e(NumberPicker paramNumberPicker) {}
  
  public final CharSequence filter(CharSequence paramCharSequence, int paramInt1, int paramInt2, Spanned paramSpanned, int paramInt3, int paramInt4)
  {
    CharSequence localCharSequence;
    if (NumberPicker.c(a) == null)
    {
      localCharSequence = super.filter(paramCharSequence, paramInt1, paramInt2, paramSpanned, paramInt3, paramInt4);
      localObject = localCharSequence;
      if (localCharSequence == null) {
        localObject = paramCharSequence.subSequence(paramInt1, paramInt2);
      }
      paramCharSequence = String.valueOf(paramSpanned.subSequence(0, paramInt3)) + localObject + paramSpanned.subSequence(paramInt4, paramSpanned.length());
      if ("".equals(paramCharSequence)) {
        localObject = paramCharSequence;
      }
      while (NumberPicker.a(a, paramCharSequence) <= NumberPicker.d(a)) {
        return (CharSequence)localObject;
      }
      return "";
    }
    paramCharSequence = String.valueOf(paramCharSequence.subSequence(paramInt1, paramInt2));
    if (TextUtils.isEmpty(paramCharSequence)) {
      return "";
    }
    paramCharSequence = String.valueOf(paramSpanned.subSequence(0, paramInt3)) + paramCharSequence + paramSpanned.subSequence(paramInt4, paramSpanned.length());
    paramSpanned = String.valueOf(paramCharSequence).toLowerCase();
    Object localObject = NumberPicker.c(a);
    paramInt2 = localObject.length;
    paramInt1 = 0;
    while (paramInt1 < paramInt2)
    {
      localCharSequence = localObject[paramInt1];
      if (localCharSequence.toLowerCase().startsWith(paramSpanned))
      {
        NumberPicker.a(a, paramCharSequence.length(), localCharSequence.length());
        return localCharSequence.subSequence(paramInt3, localCharSequence.length());
      }
      paramInt1 += 1;
    }
    return "";
  }
  
  protected final char[] getAcceptedChars()
  {
    return NumberPicker.a();
  }
  
  public final int getInputType()
  {
    return 1;
  }
}

/* Location:
 * Qualified Name:     net.simonvt.numberpicker.NumberPicker.e
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */