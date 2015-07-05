package com.brightcove.player.model;

import com.brightcove.player.util.StringUtil;
import java.io.Serializable;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class Length
  implements Serializable
{
  public static final Pattern PATTERN = Pattern.compile("^([0-9.-]+)(%|px|ems)$");
  private StyledElement.Unit unit;
  private Double value;
  
  public Length(double paramDouble, StyledElement.Unit paramUnit)
  {
    if (paramUnit == null) {
      throw new IllegalArgumentException("must provide a Unit");
    }
    value = Double.valueOf(paramDouble);
    unit = paramUnit;
  }
  
  public Length(String paramString)
  {
    if (StringUtil.isEmpty(paramString)) {
      throw new IllegalArgumentException("must provide a non-empty expression String");
    }
    Object localObject = PATTERN.matcher(paramString);
    if ((((Matcher)localObject).find()) && (((Matcher)localObject).groupCount() >= 2))
    {
      paramString = ((Matcher)localObject).group(1);
      localObject = ((Matcher)localObject).group(2);
      if (StringUtil.isEmpty(paramString)) {
        throw new IllegalArgumentException("invalid number format: " + paramString);
      }
      if (StringUtil.isEmpty((String)localObject)) {
        throw new IllegalArgumentException("invalid unit format: " + (String)localObject);
      }
      value = Double.valueOf(Double.parseDouble(paramString));
      unit = StyledElement.Unit.fromString(((String)localObject).toUpperCase());
    }
  }
  
  public boolean equals(Object paramObject)
  {
    if (this == paramObject) {}
    do
    {
      return true;
      if ((paramObject == null) || (getClass() != paramObject.getClass())) {
        return false;
      }
      paramObject = (Length)paramObject;
      if (Double.compare(value.doubleValue(), value.doubleValue()) != 0) {
        return false;
      }
    } while (unit == unit);
    return false;
  }
  
  public StyledElement.Unit getUnit()
  {
    return unit;
  }
  
  public double getValue()
  {
    return value.doubleValue();
  }
  
  public int hashCode()
  {
    if (value.doubleValue() != 0.0D) {}
    for (long l = Double.doubleToLongBits(value.doubleValue());; l = 0L) {
      return (int)(l ^ l >>> 32) * 31 + unit.hashCode();
    }
  }
}

/* Location:
 * Qualified Name:     com.brightcove.player.model.Length
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */