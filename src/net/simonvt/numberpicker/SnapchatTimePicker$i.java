package net.simonvt.numberpicker;

import java.text.DecimalFormatSymbols;
import java.util.Formatter;
import java.util.Locale;

final class SnapchatTimePicker$i
  implements SnapchatTimePicker.c
{
  final StringBuilder a = new StringBuilder();
  char b;
  Formatter c;
  final Object[] d = new Object[1];
  
  SnapchatTimePicker$i()
  {
    a(Locale.getDefault());
  }
  
  private void a(Locale paramLocale)
  {
    c = new Formatter(a, paramLocale);
    b = b(paramLocale);
  }
  
  private static char b(Locale paramLocale)
  {
    return new DecimalFormatSymbols(paramLocale).getZeroDigit();
  }
  
  public final String a(int paramInt)
  {
    Locale localLocale = Locale.getDefault();
    if (b != b(localLocale)) {
      a(localLocale);
    }
    d[0] = Integer.valueOf(paramInt);
    a.delete(0, a.length());
    c.format("%02d", d);
    return c.toString();
  }
}

/* Location:
 * Qualified Name:     net.simonvt.numberpicker.SnapchatTimePicker.i
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */