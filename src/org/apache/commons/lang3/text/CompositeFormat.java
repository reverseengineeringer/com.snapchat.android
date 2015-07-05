package org.apache.commons.lang3.text;

import java.text.FieldPosition;
import java.text.Format;
import java.text.ParsePosition;

public class CompositeFormat
  extends Format
{
  private static final long serialVersionUID = -4329119827877627683L;
  private final Format formatter;
  private final Format parser;
  
  public CompositeFormat(Format paramFormat1, Format paramFormat2)
  {
    parser = paramFormat1;
    formatter = paramFormat2;
  }
  
  public StringBuffer format(Object paramObject, StringBuffer paramStringBuffer, FieldPosition paramFieldPosition)
  {
    return formatter.format(paramObject, paramStringBuffer, paramFieldPosition);
  }
  
  public Format getFormatter()
  {
    return formatter;
  }
  
  public Format getParser()
  {
    return parser;
  }
  
  public Object parseObject(String paramString, ParsePosition paramParsePosition)
  {
    return parser.parseObject(paramString, paramParsePosition);
  }
  
  public String reformat(String paramString)
  {
    return format(parseObject(paramString));
  }
}

/* Location:
 * Qualified Name:     org.apache.commons.lang3.text.CompositeFormat
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */