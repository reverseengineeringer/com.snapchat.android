package org.apache.commons.lang3.text;

import java.text.Format;
import java.util.Locale;

public abstract interface FormatFactory
{
  public abstract Format getFormat(String paramString1, String paramString2, Locale paramLocale);
}

/* Location:
 * Qualified Name:     org.apache.commons.lang3.text.FormatFactory
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */