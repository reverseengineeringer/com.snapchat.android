package org.apache.commons.lang3.builder;

import org.apache.commons.lang3.ObjectUtils;

public class ToStringBuilder
  implements Builder<String>
{
  private static volatile ToStringStyle defaultStyle = ToStringStyle.DEFAULT_STYLE;
  private final StringBuffer buffer;
  private final Object object;
  private final ToStringStyle style;
  
  public ToStringBuilder(Object paramObject)
  {
    this(paramObject, null, null);
  }
  
  public ToStringBuilder(Object paramObject, ToStringStyle paramToStringStyle)
  {
    this(paramObject, paramToStringStyle, null);
  }
  
  public ToStringBuilder(Object paramObject, ToStringStyle paramToStringStyle, StringBuffer paramStringBuffer)
  {
    ToStringStyle localToStringStyle = paramToStringStyle;
    if (paramToStringStyle == null) {
      localToStringStyle = getDefaultStyle();
    }
    paramToStringStyle = paramStringBuffer;
    if (paramStringBuffer == null) {
      paramToStringStyle = new StringBuffer(512);
    }
    buffer = paramToStringStyle;
    style = localToStringStyle;
    object = paramObject;
    localToStringStyle.appendStart(paramToStringStyle, paramObject);
  }
  
  public static ToStringStyle getDefaultStyle()
  {
    return defaultStyle;
  }
  
  public static String reflectionToString(Object paramObject)
  {
    return ReflectionToStringBuilder.toString(paramObject);
  }
  
  public static String reflectionToString(Object paramObject, ToStringStyle paramToStringStyle)
  {
    return ReflectionToStringBuilder.toString(paramObject, paramToStringStyle);
  }
  
  public static String reflectionToString(Object paramObject, ToStringStyle paramToStringStyle, boolean paramBoolean)
  {
    return ReflectionToStringBuilder.toString(paramObject, paramToStringStyle, paramBoolean, false, null);
  }
  
  public static <T> String reflectionToString(T paramT, ToStringStyle paramToStringStyle, boolean paramBoolean, Class<? super T> paramClass)
  {
    return ReflectionToStringBuilder.toString(paramT, paramToStringStyle, paramBoolean, false, paramClass);
  }
  
  public static void setDefaultStyle(ToStringStyle paramToStringStyle)
  {
    if (paramToStringStyle == null) {
      throw new IllegalArgumentException("The style must not be null");
    }
    defaultStyle = paramToStringStyle;
  }
  
  public ToStringBuilder append(byte paramByte)
  {
    style.append(buffer, null, paramByte);
    return this;
  }
  
  public ToStringBuilder append(char paramChar)
  {
    style.append(buffer, null, paramChar);
    return this;
  }
  
  public ToStringBuilder append(double paramDouble)
  {
    style.append(buffer, null, paramDouble);
    return this;
  }
  
  public ToStringBuilder append(float paramFloat)
  {
    style.append(buffer, null, paramFloat);
    return this;
  }
  
  public ToStringBuilder append(int paramInt)
  {
    style.append(buffer, null, paramInt);
    return this;
  }
  
  public ToStringBuilder append(long paramLong)
  {
    style.append(buffer, null, paramLong);
    return this;
  }
  
  public ToStringBuilder append(Object paramObject)
  {
    style.append(buffer, null, paramObject, null);
    return this;
  }
  
  public ToStringBuilder append(String paramString, byte paramByte)
  {
    style.append(buffer, paramString, paramByte);
    return this;
  }
  
  public ToStringBuilder append(String paramString, char paramChar)
  {
    style.append(buffer, paramString, paramChar);
    return this;
  }
  
  public ToStringBuilder append(String paramString, double paramDouble)
  {
    style.append(buffer, paramString, paramDouble);
    return this;
  }
  
  public ToStringBuilder append(String paramString, float paramFloat)
  {
    style.append(buffer, paramString, paramFloat);
    return this;
  }
  
  public ToStringBuilder append(String paramString, int paramInt)
  {
    style.append(buffer, paramString, paramInt);
    return this;
  }
  
  public ToStringBuilder append(String paramString, long paramLong)
  {
    style.append(buffer, paramString, paramLong);
    return this;
  }
  
  public ToStringBuilder append(String paramString, Object paramObject)
  {
    style.append(buffer, paramString, paramObject, null);
    return this;
  }
  
  public ToStringBuilder append(String paramString, Object paramObject, boolean paramBoolean)
  {
    style.append(buffer, paramString, paramObject, Boolean.valueOf(paramBoolean));
    return this;
  }
  
  public ToStringBuilder append(String paramString, short paramShort)
  {
    style.append(buffer, paramString, paramShort);
    return this;
  }
  
  public ToStringBuilder append(String paramString, boolean paramBoolean)
  {
    style.append(buffer, paramString, paramBoolean);
    return this;
  }
  
  public ToStringBuilder append(String paramString, byte[] paramArrayOfByte)
  {
    style.append(buffer, paramString, paramArrayOfByte, null);
    return this;
  }
  
  public ToStringBuilder append(String paramString, byte[] paramArrayOfByte, boolean paramBoolean)
  {
    style.append(buffer, paramString, paramArrayOfByte, Boolean.valueOf(paramBoolean));
    return this;
  }
  
  public ToStringBuilder append(String paramString, char[] paramArrayOfChar)
  {
    style.append(buffer, paramString, paramArrayOfChar, null);
    return this;
  }
  
  public ToStringBuilder append(String paramString, char[] paramArrayOfChar, boolean paramBoolean)
  {
    style.append(buffer, paramString, paramArrayOfChar, Boolean.valueOf(paramBoolean));
    return this;
  }
  
  public ToStringBuilder append(String paramString, double[] paramArrayOfDouble)
  {
    style.append(buffer, paramString, paramArrayOfDouble, null);
    return this;
  }
  
  public ToStringBuilder append(String paramString, double[] paramArrayOfDouble, boolean paramBoolean)
  {
    style.append(buffer, paramString, paramArrayOfDouble, Boolean.valueOf(paramBoolean));
    return this;
  }
  
  public ToStringBuilder append(String paramString, float[] paramArrayOfFloat)
  {
    style.append(buffer, paramString, paramArrayOfFloat, null);
    return this;
  }
  
  public ToStringBuilder append(String paramString, float[] paramArrayOfFloat, boolean paramBoolean)
  {
    style.append(buffer, paramString, paramArrayOfFloat, Boolean.valueOf(paramBoolean));
    return this;
  }
  
  public ToStringBuilder append(String paramString, int[] paramArrayOfInt)
  {
    style.append(buffer, paramString, paramArrayOfInt, null);
    return this;
  }
  
  public ToStringBuilder append(String paramString, int[] paramArrayOfInt, boolean paramBoolean)
  {
    style.append(buffer, paramString, paramArrayOfInt, Boolean.valueOf(paramBoolean));
    return this;
  }
  
  public ToStringBuilder append(String paramString, long[] paramArrayOfLong)
  {
    style.append(buffer, paramString, paramArrayOfLong, null);
    return this;
  }
  
  public ToStringBuilder append(String paramString, long[] paramArrayOfLong, boolean paramBoolean)
  {
    style.append(buffer, paramString, paramArrayOfLong, Boolean.valueOf(paramBoolean));
    return this;
  }
  
  public ToStringBuilder append(String paramString, Object[] paramArrayOfObject)
  {
    style.append(buffer, paramString, paramArrayOfObject, null);
    return this;
  }
  
  public ToStringBuilder append(String paramString, Object[] paramArrayOfObject, boolean paramBoolean)
  {
    style.append(buffer, paramString, paramArrayOfObject, Boolean.valueOf(paramBoolean));
    return this;
  }
  
  public ToStringBuilder append(String paramString, short[] paramArrayOfShort)
  {
    style.append(buffer, paramString, paramArrayOfShort, null);
    return this;
  }
  
  public ToStringBuilder append(String paramString, short[] paramArrayOfShort, boolean paramBoolean)
  {
    style.append(buffer, paramString, paramArrayOfShort, Boolean.valueOf(paramBoolean));
    return this;
  }
  
  public ToStringBuilder append(String paramString, boolean[] paramArrayOfBoolean)
  {
    style.append(buffer, paramString, paramArrayOfBoolean, null);
    return this;
  }
  
  public ToStringBuilder append(String paramString, boolean[] paramArrayOfBoolean, boolean paramBoolean)
  {
    style.append(buffer, paramString, paramArrayOfBoolean, Boolean.valueOf(paramBoolean));
    return this;
  }
  
  public ToStringBuilder append(short paramShort)
  {
    style.append(buffer, null, paramShort);
    return this;
  }
  
  public ToStringBuilder append(boolean paramBoolean)
  {
    style.append(buffer, null, paramBoolean);
    return this;
  }
  
  public ToStringBuilder append(byte[] paramArrayOfByte)
  {
    style.append(buffer, null, paramArrayOfByte, null);
    return this;
  }
  
  public ToStringBuilder append(char[] paramArrayOfChar)
  {
    style.append(buffer, null, paramArrayOfChar, null);
    return this;
  }
  
  public ToStringBuilder append(double[] paramArrayOfDouble)
  {
    style.append(buffer, null, paramArrayOfDouble, null);
    return this;
  }
  
  public ToStringBuilder append(float[] paramArrayOfFloat)
  {
    style.append(buffer, null, paramArrayOfFloat, null);
    return this;
  }
  
  public ToStringBuilder append(int[] paramArrayOfInt)
  {
    style.append(buffer, null, paramArrayOfInt, null);
    return this;
  }
  
  public ToStringBuilder append(long[] paramArrayOfLong)
  {
    style.append(buffer, null, paramArrayOfLong, null);
    return this;
  }
  
  public ToStringBuilder append(Object[] paramArrayOfObject)
  {
    style.append(buffer, null, paramArrayOfObject, null);
    return this;
  }
  
  public ToStringBuilder append(short[] paramArrayOfShort)
  {
    style.append(buffer, null, paramArrayOfShort, null);
    return this;
  }
  
  public ToStringBuilder append(boolean[] paramArrayOfBoolean)
  {
    style.append(buffer, null, paramArrayOfBoolean, null);
    return this;
  }
  
  public ToStringBuilder appendAsObjectToString(Object paramObject)
  {
    ObjectUtils.identityToString(getStringBuffer(), paramObject);
    return this;
  }
  
  public ToStringBuilder appendSuper(String paramString)
  {
    if (paramString != null) {
      style.appendSuper(buffer, paramString);
    }
    return this;
  }
  
  public ToStringBuilder appendToString(String paramString)
  {
    if (paramString != null) {
      style.appendToString(buffer, paramString);
    }
    return this;
  }
  
  public String build()
  {
    return toString();
  }
  
  public Object getObject()
  {
    return object;
  }
  
  public StringBuffer getStringBuffer()
  {
    return buffer;
  }
  
  public ToStringStyle getStyle()
  {
    return style;
  }
  
  public String toString()
  {
    if (getObject() == null) {
      getStringBuffer().append(getStyle().getNullText());
    }
    for (;;)
    {
      return getStringBuffer().toString();
      style.appendEnd(getStringBuffer(), getObject());
    }
  }
}

/* Location:
 * Qualified Name:     org.apache.commons.lang3.builder.ToStringBuilder
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */