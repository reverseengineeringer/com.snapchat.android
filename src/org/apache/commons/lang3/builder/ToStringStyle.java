package org.apache.commons.lang3.builder;

import java.io.Serializable;
import java.lang.reflect.Array;
import java.util.Collection;
import java.util.Map;
import java.util.WeakHashMap;
import org.apache.commons.lang3.ClassUtils;
import org.apache.commons.lang3.ObjectUtils;
import org.apache.commons.lang3.SystemUtils;

public abstract class ToStringStyle
  implements Serializable
{
  public static final ToStringStyle DEFAULT_STYLE = new DefaultToStringStyle();
  public static final ToStringStyle MULTI_LINE_STYLE = new MultiLineToStringStyle();
  public static final ToStringStyle NO_FIELD_NAMES_STYLE = new NoFieldNameToStringStyle();
  private static final ThreadLocal<WeakHashMap<Object, Object>> REGISTRY = new ThreadLocal();
  public static final ToStringStyle SHORT_PREFIX_STYLE = new ShortPrefixToStringStyle();
  public static final ToStringStyle SIMPLE_STYLE = new SimpleToStringStyle();
  private static final long serialVersionUID = -2587890625525655916L;
  private boolean arrayContentDetail = true;
  private String arrayEnd = "}";
  private String arraySeparator = ",";
  private String arrayStart = "{";
  private String contentEnd = "]";
  private String contentStart = "[";
  private boolean defaultFullDetail = true;
  private String fieldNameValueSeparator = "=";
  private String fieldSeparator = ",";
  private boolean fieldSeparatorAtEnd = false;
  private boolean fieldSeparatorAtStart = false;
  private String nullText = "<null>";
  private String sizeEndText = ">";
  private String sizeStartText = "<size=";
  private String summaryObjectEndText = ">";
  private String summaryObjectStartText = "<";
  private boolean useClassName = true;
  private boolean useFieldNames = true;
  private boolean useIdentityHashCode = true;
  private boolean useShortClassName = false;
  
  static Map<Object, Object> getRegistry()
  {
    return (Map)REGISTRY.get();
  }
  
  static boolean isRegistered(Object paramObject)
  {
    Map localMap = getRegistry();
    return (localMap != null) && (localMap.containsKey(paramObject));
  }
  
  static void register(Object paramObject)
  {
    if (paramObject != null)
    {
      if (getRegistry() == null) {
        REGISTRY.set(new WeakHashMap());
      }
      getRegistry().put(paramObject, null);
    }
  }
  
  static void unregister(Object paramObject)
  {
    if (paramObject != null)
    {
      Map localMap = getRegistry();
      if (localMap != null)
      {
        localMap.remove(paramObject);
        if (localMap.isEmpty()) {
          REGISTRY.remove();
        }
      }
    }
  }
  
  public void append(StringBuffer paramStringBuffer, String paramString, byte paramByte)
  {
    appendFieldStart(paramStringBuffer, paramString);
    appendDetail(paramStringBuffer, paramString, paramByte);
    appendFieldEnd(paramStringBuffer, paramString);
  }
  
  public void append(StringBuffer paramStringBuffer, String paramString, char paramChar)
  {
    appendFieldStart(paramStringBuffer, paramString);
    appendDetail(paramStringBuffer, paramString, paramChar);
    appendFieldEnd(paramStringBuffer, paramString);
  }
  
  public void append(StringBuffer paramStringBuffer, String paramString, double paramDouble)
  {
    appendFieldStart(paramStringBuffer, paramString);
    appendDetail(paramStringBuffer, paramString, paramDouble);
    appendFieldEnd(paramStringBuffer, paramString);
  }
  
  public void append(StringBuffer paramStringBuffer, String paramString, float paramFloat)
  {
    appendFieldStart(paramStringBuffer, paramString);
    appendDetail(paramStringBuffer, paramString, paramFloat);
    appendFieldEnd(paramStringBuffer, paramString);
  }
  
  public void append(StringBuffer paramStringBuffer, String paramString, int paramInt)
  {
    appendFieldStart(paramStringBuffer, paramString);
    appendDetail(paramStringBuffer, paramString, paramInt);
    appendFieldEnd(paramStringBuffer, paramString);
  }
  
  public void append(StringBuffer paramStringBuffer, String paramString, long paramLong)
  {
    appendFieldStart(paramStringBuffer, paramString);
    appendDetail(paramStringBuffer, paramString, paramLong);
    appendFieldEnd(paramStringBuffer, paramString);
  }
  
  public void append(StringBuffer paramStringBuffer, String paramString, Object paramObject, Boolean paramBoolean)
  {
    appendFieldStart(paramStringBuffer, paramString);
    if (paramObject == null) {
      appendNullText(paramStringBuffer, paramString);
    }
    for (;;)
    {
      appendFieldEnd(paramStringBuffer, paramString);
      return;
      appendInternal(paramStringBuffer, paramString, paramObject, isFullDetail(paramBoolean));
    }
  }
  
  public void append(StringBuffer paramStringBuffer, String paramString, short paramShort)
  {
    appendFieldStart(paramStringBuffer, paramString);
    appendDetail(paramStringBuffer, paramString, paramShort);
    appendFieldEnd(paramStringBuffer, paramString);
  }
  
  public void append(StringBuffer paramStringBuffer, String paramString, boolean paramBoolean)
  {
    appendFieldStart(paramStringBuffer, paramString);
    appendDetail(paramStringBuffer, paramString, paramBoolean);
    appendFieldEnd(paramStringBuffer, paramString);
  }
  
  public void append(StringBuffer paramStringBuffer, String paramString, byte[] paramArrayOfByte, Boolean paramBoolean)
  {
    appendFieldStart(paramStringBuffer, paramString);
    if (paramArrayOfByte == null) {
      appendNullText(paramStringBuffer, paramString);
    }
    for (;;)
    {
      appendFieldEnd(paramStringBuffer, paramString);
      return;
      if (isFullDetail(paramBoolean)) {
        appendDetail(paramStringBuffer, paramString, paramArrayOfByte);
      } else {
        appendSummary(paramStringBuffer, paramString, paramArrayOfByte);
      }
    }
  }
  
  public void append(StringBuffer paramStringBuffer, String paramString, char[] paramArrayOfChar, Boolean paramBoolean)
  {
    appendFieldStart(paramStringBuffer, paramString);
    if (paramArrayOfChar == null) {
      appendNullText(paramStringBuffer, paramString);
    }
    for (;;)
    {
      appendFieldEnd(paramStringBuffer, paramString);
      return;
      if (isFullDetail(paramBoolean)) {
        appendDetail(paramStringBuffer, paramString, paramArrayOfChar);
      } else {
        appendSummary(paramStringBuffer, paramString, paramArrayOfChar);
      }
    }
  }
  
  public void append(StringBuffer paramStringBuffer, String paramString, double[] paramArrayOfDouble, Boolean paramBoolean)
  {
    appendFieldStart(paramStringBuffer, paramString);
    if (paramArrayOfDouble == null) {
      appendNullText(paramStringBuffer, paramString);
    }
    for (;;)
    {
      appendFieldEnd(paramStringBuffer, paramString);
      return;
      if (isFullDetail(paramBoolean)) {
        appendDetail(paramStringBuffer, paramString, paramArrayOfDouble);
      } else {
        appendSummary(paramStringBuffer, paramString, paramArrayOfDouble);
      }
    }
  }
  
  public void append(StringBuffer paramStringBuffer, String paramString, float[] paramArrayOfFloat, Boolean paramBoolean)
  {
    appendFieldStart(paramStringBuffer, paramString);
    if (paramArrayOfFloat == null) {
      appendNullText(paramStringBuffer, paramString);
    }
    for (;;)
    {
      appendFieldEnd(paramStringBuffer, paramString);
      return;
      if (isFullDetail(paramBoolean)) {
        appendDetail(paramStringBuffer, paramString, paramArrayOfFloat);
      } else {
        appendSummary(paramStringBuffer, paramString, paramArrayOfFloat);
      }
    }
  }
  
  public void append(StringBuffer paramStringBuffer, String paramString, int[] paramArrayOfInt, Boolean paramBoolean)
  {
    appendFieldStart(paramStringBuffer, paramString);
    if (paramArrayOfInt == null) {
      appendNullText(paramStringBuffer, paramString);
    }
    for (;;)
    {
      appendFieldEnd(paramStringBuffer, paramString);
      return;
      if (isFullDetail(paramBoolean)) {
        appendDetail(paramStringBuffer, paramString, paramArrayOfInt);
      } else {
        appendSummary(paramStringBuffer, paramString, paramArrayOfInt);
      }
    }
  }
  
  public void append(StringBuffer paramStringBuffer, String paramString, long[] paramArrayOfLong, Boolean paramBoolean)
  {
    appendFieldStart(paramStringBuffer, paramString);
    if (paramArrayOfLong == null) {
      appendNullText(paramStringBuffer, paramString);
    }
    for (;;)
    {
      appendFieldEnd(paramStringBuffer, paramString);
      return;
      if (isFullDetail(paramBoolean)) {
        appendDetail(paramStringBuffer, paramString, paramArrayOfLong);
      } else {
        appendSummary(paramStringBuffer, paramString, paramArrayOfLong);
      }
    }
  }
  
  public void append(StringBuffer paramStringBuffer, String paramString, Object[] paramArrayOfObject, Boolean paramBoolean)
  {
    appendFieldStart(paramStringBuffer, paramString);
    if (paramArrayOfObject == null) {
      appendNullText(paramStringBuffer, paramString);
    }
    for (;;)
    {
      appendFieldEnd(paramStringBuffer, paramString);
      return;
      if (isFullDetail(paramBoolean)) {
        appendDetail(paramStringBuffer, paramString, paramArrayOfObject);
      } else {
        appendSummary(paramStringBuffer, paramString, paramArrayOfObject);
      }
    }
  }
  
  public void append(StringBuffer paramStringBuffer, String paramString, short[] paramArrayOfShort, Boolean paramBoolean)
  {
    appendFieldStart(paramStringBuffer, paramString);
    if (paramArrayOfShort == null) {
      appendNullText(paramStringBuffer, paramString);
    }
    for (;;)
    {
      appendFieldEnd(paramStringBuffer, paramString);
      return;
      if (isFullDetail(paramBoolean)) {
        appendDetail(paramStringBuffer, paramString, paramArrayOfShort);
      } else {
        appendSummary(paramStringBuffer, paramString, paramArrayOfShort);
      }
    }
  }
  
  public void append(StringBuffer paramStringBuffer, String paramString, boolean[] paramArrayOfBoolean, Boolean paramBoolean)
  {
    appendFieldStart(paramStringBuffer, paramString);
    if (paramArrayOfBoolean == null) {
      appendNullText(paramStringBuffer, paramString);
    }
    for (;;)
    {
      appendFieldEnd(paramStringBuffer, paramString);
      return;
      if (isFullDetail(paramBoolean)) {
        appendDetail(paramStringBuffer, paramString, paramArrayOfBoolean);
      } else {
        appendSummary(paramStringBuffer, paramString, paramArrayOfBoolean);
      }
    }
  }
  
  protected void appendClassName(StringBuffer paramStringBuffer, Object paramObject)
  {
    if ((useClassName) && (paramObject != null))
    {
      register(paramObject);
      if (useShortClassName) {
        paramStringBuffer.append(getShortClassName(paramObject.getClass()));
      }
    }
    else
    {
      return;
    }
    paramStringBuffer.append(paramObject.getClass().getName());
  }
  
  protected void appendContentEnd(StringBuffer paramStringBuffer)
  {
    paramStringBuffer.append(contentEnd);
  }
  
  protected void appendContentStart(StringBuffer paramStringBuffer)
  {
    paramStringBuffer.append(contentStart);
  }
  
  protected void appendCyclicObject(StringBuffer paramStringBuffer, String paramString, Object paramObject)
  {
    ObjectUtils.identityToString(paramStringBuffer, paramObject);
  }
  
  protected void appendDetail(StringBuffer paramStringBuffer, String paramString, byte paramByte)
  {
    paramStringBuffer.append(paramByte);
  }
  
  protected void appendDetail(StringBuffer paramStringBuffer, String paramString, char paramChar)
  {
    paramStringBuffer.append(paramChar);
  }
  
  protected void appendDetail(StringBuffer paramStringBuffer, String paramString, double paramDouble)
  {
    paramStringBuffer.append(paramDouble);
  }
  
  protected void appendDetail(StringBuffer paramStringBuffer, String paramString, float paramFloat)
  {
    paramStringBuffer.append(paramFloat);
  }
  
  protected void appendDetail(StringBuffer paramStringBuffer, String paramString, int paramInt)
  {
    paramStringBuffer.append(paramInt);
  }
  
  protected void appendDetail(StringBuffer paramStringBuffer, String paramString, long paramLong)
  {
    paramStringBuffer.append(paramLong);
  }
  
  public void appendDetail(StringBuffer paramStringBuffer, String paramString, Object paramObject)
  {
    paramStringBuffer.append(paramObject);
  }
  
  protected void appendDetail(StringBuffer paramStringBuffer, String paramString, Collection<?> paramCollection)
  {
    paramStringBuffer.append(paramCollection);
  }
  
  protected void appendDetail(StringBuffer paramStringBuffer, String paramString, Map<?, ?> paramMap)
  {
    paramStringBuffer.append(paramMap);
  }
  
  protected void appendDetail(StringBuffer paramStringBuffer, String paramString, short paramShort)
  {
    paramStringBuffer.append(paramShort);
  }
  
  protected void appendDetail(StringBuffer paramStringBuffer, String paramString, boolean paramBoolean)
  {
    paramStringBuffer.append(paramBoolean);
  }
  
  protected void appendDetail(StringBuffer paramStringBuffer, String paramString, byte[] paramArrayOfByte)
  {
    paramStringBuffer.append(arrayStart);
    int i = 0;
    while (i < paramArrayOfByte.length)
    {
      if (i > 0) {
        paramStringBuffer.append(arraySeparator);
      }
      appendDetail(paramStringBuffer, paramString, paramArrayOfByte[i]);
      i += 1;
    }
    paramStringBuffer.append(arrayEnd);
  }
  
  protected void appendDetail(StringBuffer paramStringBuffer, String paramString, char[] paramArrayOfChar)
  {
    paramStringBuffer.append(arrayStart);
    int i = 0;
    while (i < paramArrayOfChar.length)
    {
      if (i > 0) {
        paramStringBuffer.append(arraySeparator);
      }
      appendDetail(paramStringBuffer, paramString, paramArrayOfChar[i]);
      i += 1;
    }
    paramStringBuffer.append(arrayEnd);
  }
  
  protected void appendDetail(StringBuffer paramStringBuffer, String paramString, double[] paramArrayOfDouble)
  {
    paramStringBuffer.append(arrayStart);
    int i = 0;
    while (i < paramArrayOfDouble.length)
    {
      if (i > 0) {
        paramStringBuffer.append(arraySeparator);
      }
      appendDetail(paramStringBuffer, paramString, paramArrayOfDouble[i]);
      i += 1;
    }
    paramStringBuffer.append(arrayEnd);
  }
  
  protected void appendDetail(StringBuffer paramStringBuffer, String paramString, float[] paramArrayOfFloat)
  {
    paramStringBuffer.append(arrayStart);
    int i = 0;
    while (i < paramArrayOfFloat.length)
    {
      if (i > 0) {
        paramStringBuffer.append(arraySeparator);
      }
      appendDetail(paramStringBuffer, paramString, paramArrayOfFloat[i]);
      i += 1;
    }
    paramStringBuffer.append(arrayEnd);
  }
  
  protected void appendDetail(StringBuffer paramStringBuffer, String paramString, int[] paramArrayOfInt)
  {
    paramStringBuffer.append(arrayStart);
    int i = 0;
    while (i < paramArrayOfInt.length)
    {
      if (i > 0) {
        paramStringBuffer.append(arraySeparator);
      }
      appendDetail(paramStringBuffer, paramString, paramArrayOfInt[i]);
      i += 1;
    }
    paramStringBuffer.append(arrayEnd);
  }
  
  protected void appendDetail(StringBuffer paramStringBuffer, String paramString, long[] paramArrayOfLong)
  {
    paramStringBuffer.append(arrayStart);
    int i = 0;
    while (i < paramArrayOfLong.length)
    {
      if (i > 0) {
        paramStringBuffer.append(arraySeparator);
      }
      appendDetail(paramStringBuffer, paramString, paramArrayOfLong[i]);
      i += 1;
    }
    paramStringBuffer.append(arrayEnd);
  }
  
  protected void appendDetail(StringBuffer paramStringBuffer, String paramString, Object[] paramArrayOfObject)
  {
    paramStringBuffer.append(arrayStart);
    int i = 0;
    if (i < paramArrayOfObject.length)
    {
      Object localObject = paramArrayOfObject[i];
      if (i > 0) {
        paramStringBuffer.append(arraySeparator);
      }
      if (localObject == null) {
        appendNullText(paramStringBuffer, paramString);
      }
      for (;;)
      {
        i += 1;
        break;
        appendInternal(paramStringBuffer, paramString, localObject, arrayContentDetail);
      }
    }
    paramStringBuffer.append(arrayEnd);
  }
  
  protected void appendDetail(StringBuffer paramStringBuffer, String paramString, short[] paramArrayOfShort)
  {
    paramStringBuffer.append(arrayStart);
    int i = 0;
    while (i < paramArrayOfShort.length)
    {
      if (i > 0) {
        paramStringBuffer.append(arraySeparator);
      }
      appendDetail(paramStringBuffer, paramString, paramArrayOfShort[i]);
      i += 1;
    }
    paramStringBuffer.append(arrayEnd);
  }
  
  protected void appendDetail(StringBuffer paramStringBuffer, String paramString, boolean[] paramArrayOfBoolean)
  {
    paramStringBuffer.append(arrayStart);
    int i = 0;
    while (i < paramArrayOfBoolean.length)
    {
      if (i > 0) {
        paramStringBuffer.append(arraySeparator);
      }
      appendDetail(paramStringBuffer, paramString, paramArrayOfBoolean[i]);
      i += 1;
    }
    paramStringBuffer.append(arrayEnd);
  }
  
  public void appendEnd(StringBuffer paramStringBuffer, Object paramObject)
  {
    if (!fieldSeparatorAtEnd) {
      removeLastFieldSeparator(paramStringBuffer);
    }
    appendContentEnd(paramStringBuffer);
    unregister(paramObject);
  }
  
  protected void appendFieldEnd(StringBuffer paramStringBuffer, String paramString)
  {
    appendFieldSeparator(paramStringBuffer);
  }
  
  protected void appendFieldSeparator(StringBuffer paramStringBuffer)
  {
    paramStringBuffer.append(fieldSeparator);
  }
  
  protected void appendFieldStart(StringBuffer paramStringBuffer, String paramString)
  {
    if ((useFieldNames) && (paramString != null))
    {
      paramStringBuffer.append(paramString);
      paramStringBuffer.append(fieldNameValueSeparator);
    }
  }
  
  protected void appendIdentityHashCode(StringBuffer paramStringBuffer, Object paramObject)
  {
    if ((isUseIdentityHashCode()) && (paramObject != null))
    {
      register(paramObject);
      paramStringBuffer.append('@');
      paramStringBuffer.append(Integer.toHexString(System.identityHashCode(paramObject)));
    }
  }
  
  protected void appendInternal(StringBuffer paramStringBuffer, String paramString, Object paramObject, boolean paramBoolean)
  {
    if ((isRegistered(paramObject)) && (!(paramObject instanceof Number)) && (!(paramObject instanceof Boolean)) && (!(paramObject instanceof Character)))
    {
      appendCyclicObject(paramStringBuffer, paramString, paramObject);
      return;
    }
    register(paramObject);
    for (;;)
    {
      try
      {
        if ((paramObject instanceof Collection))
        {
          if (paramBoolean)
          {
            appendDetail(paramStringBuffer, paramString, (Collection)paramObject);
            return;
          }
          appendSummarySize(paramStringBuffer, paramString, ((Collection)paramObject).size());
          continue;
        }
        if (!(paramObject instanceof Map)) {
          break label135;
        }
      }
      finally
      {
        unregister(paramObject);
      }
      if (paramBoolean)
      {
        appendDetail(paramStringBuffer, paramString, (Map)paramObject);
      }
      else
      {
        appendSummarySize(paramStringBuffer, paramString, ((Map)paramObject).size());
        continue;
        label135:
        if ((paramObject instanceof long[]))
        {
          if (paramBoolean) {
            appendDetail(paramStringBuffer, paramString, (long[])paramObject);
          } else {
            appendSummary(paramStringBuffer, paramString, (long[])paramObject);
          }
        }
        else if ((paramObject instanceof int[]))
        {
          if (paramBoolean) {
            appendDetail(paramStringBuffer, paramString, (int[])paramObject);
          } else {
            appendSummary(paramStringBuffer, paramString, (int[])paramObject);
          }
        }
        else if ((paramObject instanceof short[]))
        {
          if (paramBoolean) {
            appendDetail(paramStringBuffer, paramString, (short[])paramObject);
          } else {
            appendSummary(paramStringBuffer, paramString, (short[])paramObject);
          }
        }
        else if ((paramObject instanceof byte[]))
        {
          if (paramBoolean) {
            appendDetail(paramStringBuffer, paramString, (byte[])paramObject);
          } else {
            appendSummary(paramStringBuffer, paramString, (byte[])paramObject);
          }
        }
        else if ((paramObject instanceof char[]))
        {
          if (paramBoolean) {
            appendDetail(paramStringBuffer, paramString, (char[])paramObject);
          } else {
            appendSummary(paramStringBuffer, paramString, (char[])paramObject);
          }
        }
        else if ((paramObject instanceof double[]))
        {
          if (paramBoolean) {
            appendDetail(paramStringBuffer, paramString, (double[])paramObject);
          } else {
            appendSummary(paramStringBuffer, paramString, (double[])paramObject);
          }
        }
        else if ((paramObject instanceof float[]))
        {
          if (paramBoolean) {
            appendDetail(paramStringBuffer, paramString, (float[])paramObject);
          } else {
            appendSummary(paramStringBuffer, paramString, (float[])paramObject);
          }
        }
        else if ((paramObject instanceof boolean[]))
        {
          if (paramBoolean) {
            appendDetail(paramStringBuffer, paramString, (boolean[])paramObject);
          } else {
            appendSummary(paramStringBuffer, paramString, (boolean[])paramObject);
          }
        }
        else if (paramObject.getClass().isArray())
        {
          if (paramBoolean) {
            appendDetail(paramStringBuffer, paramString, (Object[])paramObject);
          } else {
            appendSummary(paramStringBuffer, paramString, (Object[])paramObject);
          }
        }
        else if (paramBoolean) {
          appendDetail(paramStringBuffer, paramString, paramObject);
        } else {
          appendSummary(paramStringBuffer, paramString, paramObject);
        }
      }
    }
  }
  
  protected void appendNullText(StringBuffer paramStringBuffer, String paramString)
  {
    paramStringBuffer.append(nullText);
  }
  
  public void appendStart(StringBuffer paramStringBuffer, Object paramObject)
  {
    if (paramObject != null)
    {
      appendClassName(paramStringBuffer, paramObject);
      appendIdentityHashCode(paramStringBuffer, paramObject);
      appendContentStart(paramStringBuffer);
      if (fieldSeparatorAtStart) {
        appendFieldSeparator(paramStringBuffer);
      }
    }
  }
  
  protected void appendSummary(StringBuffer paramStringBuffer, String paramString, Object paramObject)
  {
    paramStringBuffer.append(summaryObjectStartText);
    paramStringBuffer.append(getShortClassName(paramObject.getClass()));
    paramStringBuffer.append(summaryObjectEndText);
  }
  
  protected void appendSummary(StringBuffer paramStringBuffer, String paramString, byte[] paramArrayOfByte)
  {
    appendSummarySize(paramStringBuffer, paramString, paramArrayOfByte.length);
  }
  
  protected void appendSummary(StringBuffer paramStringBuffer, String paramString, char[] paramArrayOfChar)
  {
    appendSummarySize(paramStringBuffer, paramString, paramArrayOfChar.length);
  }
  
  protected void appendSummary(StringBuffer paramStringBuffer, String paramString, double[] paramArrayOfDouble)
  {
    appendSummarySize(paramStringBuffer, paramString, paramArrayOfDouble.length);
  }
  
  protected void appendSummary(StringBuffer paramStringBuffer, String paramString, float[] paramArrayOfFloat)
  {
    appendSummarySize(paramStringBuffer, paramString, paramArrayOfFloat.length);
  }
  
  protected void appendSummary(StringBuffer paramStringBuffer, String paramString, int[] paramArrayOfInt)
  {
    appendSummarySize(paramStringBuffer, paramString, paramArrayOfInt.length);
  }
  
  protected void appendSummary(StringBuffer paramStringBuffer, String paramString, long[] paramArrayOfLong)
  {
    appendSummarySize(paramStringBuffer, paramString, paramArrayOfLong.length);
  }
  
  protected void appendSummary(StringBuffer paramStringBuffer, String paramString, Object[] paramArrayOfObject)
  {
    appendSummarySize(paramStringBuffer, paramString, paramArrayOfObject.length);
  }
  
  protected void appendSummary(StringBuffer paramStringBuffer, String paramString, short[] paramArrayOfShort)
  {
    appendSummarySize(paramStringBuffer, paramString, paramArrayOfShort.length);
  }
  
  protected void appendSummary(StringBuffer paramStringBuffer, String paramString, boolean[] paramArrayOfBoolean)
  {
    appendSummarySize(paramStringBuffer, paramString, paramArrayOfBoolean.length);
  }
  
  protected void appendSummarySize(StringBuffer paramStringBuffer, String paramString, int paramInt)
  {
    paramStringBuffer.append(sizeStartText);
    paramStringBuffer.append(paramInt);
    paramStringBuffer.append(sizeEndText);
  }
  
  public void appendSuper(StringBuffer paramStringBuffer, String paramString)
  {
    appendToString(paramStringBuffer, paramString);
  }
  
  public void appendToString(StringBuffer paramStringBuffer, String paramString)
  {
    if (paramString != null)
    {
      int i = paramString.indexOf(contentStart) + contentStart.length();
      int j = paramString.lastIndexOf(contentEnd);
      if ((i != j) && (i >= 0) && (j >= 0))
      {
        paramString = paramString.substring(i, j);
        if (fieldSeparatorAtStart) {
          removeLastFieldSeparator(paramStringBuffer);
        }
        paramStringBuffer.append(paramString);
        appendFieldSeparator(paramStringBuffer);
      }
    }
  }
  
  protected String getArrayEnd()
  {
    return arrayEnd;
  }
  
  protected String getArraySeparator()
  {
    return arraySeparator;
  }
  
  protected String getArrayStart()
  {
    return arrayStart;
  }
  
  protected String getContentEnd()
  {
    return contentEnd;
  }
  
  protected String getContentStart()
  {
    return contentStart;
  }
  
  protected String getFieldNameValueSeparator()
  {
    return fieldNameValueSeparator;
  }
  
  protected String getFieldSeparator()
  {
    return fieldSeparator;
  }
  
  protected String getNullText()
  {
    return nullText;
  }
  
  public String getShortClassName(Class<?> paramClass)
  {
    return ClassUtils.getShortClassName(paramClass);
  }
  
  protected String getSizeEndText()
  {
    return sizeEndText;
  }
  
  protected String getSizeStartText()
  {
    return sizeStartText;
  }
  
  protected String getSummaryObjectEndText()
  {
    return summaryObjectEndText;
  }
  
  protected String getSummaryObjectStartText()
  {
    return summaryObjectStartText;
  }
  
  protected boolean isArrayContentDetail()
  {
    return arrayContentDetail;
  }
  
  protected boolean isDefaultFullDetail()
  {
    return defaultFullDetail;
  }
  
  protected boolean isFieldSeparatorAtEnd()
  {
    return fieldSeparatorAtEnd;
  }
  
  protected boolean isFieldSeparatorAtStart()
  {
    return fieldSeparatorAtStart;
  }
  
  protected boolean isFullDetail(Boolean paramBoolean)
  {
    if (paramBoolean == null) {
      return defaultFullDetail;
    }
    return paramBoolean.booleanValue();
  }
  
  protected boolean isUseClassName()
  {
    return useClassName;
  }
  
  protected boolean isUseFieldNames()
  {
    return useFieldNames;
  }
  
  protected boolean isUseIdentityHashCode()
  {
    return useIdentityHashCode;
  }
  
  protected boolean isUseShortClassName()
  {
    return useShortClassName;
  }
  
  protected void reflectionAppendArrayDetail(StringBuffer paramStringBuffer, String paramString, Object paramObject)
  {
    paramStringBuffer.append(arrayStart);
    int j = Array.getLength(paramObject);
    int i = 0;
    if (i < j)
    {
      Object localObject = Array.get(paramObject, i);
      if (i > 0) {
        paramStringBuffer.append(arraySeparator);
      }
      if (localObject == null) {
        appendNullText(paramStringBuffer, paramString);
      }
      for (;;)
      {
        i += 1;
        break;
        appendInternal(paramStringBuffer, paramString, localObject, arrayContentDetail);
      }
    }
    paramStringBuffer.append(arrayEnd);
  }
  
  protected void removeLastFieldSeparator(StringBuffer paramStringBuffer)
  {
    int j = 0;
    int k = paramStringBuffer.length();
    int m = fieldSeparator.length();
    if ((k > 0) && (m > 0) && (k >= m))
    {
      i = 0;
      if (i >= m) {
        break label91;
      }
      if (paramStringBuffer.charAt(k - 1 - i) == fieldSeparator.charAt(m - 1 - i)) {
        break label84;
      }
    }
    label84:
    label91:
    for (int i = j;; i = 1)
    {
      if (i != 0) {
        paramStringBuffer.setLength(k - m);
      }
      return;
      i += 1;
      break;
    }
  }
  
  public void setArrayContentDetail(boolean paramBoolean)
  {
    arrayContentDetail = paramBoolean;
  }
  
  public void setArrayEnd(String paramString)
  {
    String str = paramString;
    if (paramString == null) {
      str = "";
    }
    arrayEnd = str;
  }
  
  protected void setArraySeparator(String paramString)
  {
    String str = paramString;
    if (paramString == null) {
      str = "";
    }
    arraySeparator = str;
  }
  
  public void setArrayStart(String paramString)
  {
    String str = paramString;
    if (paramString == null) {
      str = "";
    }
    arrayStart = str;
  }
  
  public void setContentEnd(String paramString)
  {
    String str = paramString;
    if (paramString == null) {
      str = "";
    }
    contentEnd = str;
  }
  
  public void setContentStart(String paramString)
  {
    String str = paramString;
    if (paramString == null) {
      str = "";
    }
    contentStart = str;
  }
  
  public void setDefaultFullDetail(boolean paramBoolean)
  {
    defaultFullDetail = paramBoolean;
  }
  
  protected void setFieldNameValueSeparator(String paramString)
  {
    String str = paramString;
    if (paramString == null) {
      str = "";
    }
    fieldNameValueSeparator = str;
  }
  
  public void setFieldSeparator(String paramString)
  {
    String str = paramString;
    if (paramString == null) {
      str = "";
    }
    fieldSeparator = str;
  }
  
  protected void setFieldSeparatorAtEnd(boolean paramBoolean)
  {
    fieldSeparatorAtEnd = paramBoolean;
  }
  
  protected void setFieldSeparatorAtStart(boolean paramBoolean)
  {
    fieldSeparatorAtStart = paramBoolean;
  }
  
  protected void setNullText(String paramString)
  {
    String str = paramString;
    if (paramString == null) {
      str = "";
    }
    nullText = str;
  }
  
  protected void setSizeEndText(String paramString)
  {
    String str = paramString;
    if (paramString == null) {
      str = "";
    }
    sizeEndText = str;
  }
  
  protected void setSizeStartText(String paramString)
  {
    String str = paramString;
    if (paramString == null) {
      str = "";
    }
    sizeStartText = str;
  }
  
  protected void setSummaryObjectEndText(String paramString)
  {
    String str = paramString;
    if (paramString == null) {
      str = "";
    }
    summaryObjectEndText = str;
  }
  
  protected void setSummaryObjectStartText(String paramString)
  {
    String str = paramString;
    if (paramString == null) {
      str = "";
    }
    summaryObjectStartText = str;
  }
  
  public void setUseClassName(boolean paramBoolean)
  {
    useClassName = paramBoolean;
  }
  
  protected void setUseFieldNames(boolean paramBoolean)
  {
    useFieldNames = paramBoolean;
  }
  
  public void setUseIdentityHashCode(boolean paramBoolean)
  {
    useIdentityHashCode = paramBoolean;
  }
  
  public void setUseShortClassName(boolean paramBoolean)
  {
    useShortClassName = paramBoolean;
  }
  
  static final class DefaultToStringStyle
    extends ToStringStyle
  {
    private static final long serialVersionUID = 1L;
    
    private Object readResolve()
    {
      return ToStringStyle.DEFAULT_STYLE;
    }
  }
  
  static final class MultiLineToStringStyle
    extends ToStringStyle
  {
    private static final long serialVersionUID = 1L;
    
    MultiLineToStringStyle()
    {
      setContentStart("[");
      setFieldSeparator(SystemUtils.LINE_SEPARATOR + "  ");
      setFieldSeparatorAtStart(true);
      setContentEnd(SystemUtils.LINE_SEPARATOR + "]");
    }
    
    private Object readResolve()
    {
      return ToStringStyle.MULTI_LINE_STYLE;
    }
  }
  
  static final class NoFieldNameToStringStyle
    extends ToStringStyle
  {
    private static final long serialVersionUID = 1L;
    
    NoFieldNameToStringStyle()
    {
      setUseFieldNames(false);
    }
    
    private Object readResolve()
    {
      return ToStringStyle.NO_FIELD_NAMES_STYLE;
    }
  }
  
  static final class ShortPrefixToStringStyle
    extends ToStringStyle
  {
    private static final long serialVersionUID = 1L;
    
    ShortPrefixToStringStyle()
    {
      setUseShortClassName(true);
      setUseIdentityHashCode(false);
    }
    
    private Object readResolve()
    {
      return ToStringStyle.SHORT_PREFIX_STYLE;
    }
  }
  
  static final class SimpleToStringStyle
    extends ToStringStyle
  {
    private static final long serialVersionUID = 1L;
    
    SimpleToStringStyle()
    {
      setUseClassName(false);
      setUseIdentityHashCode(false);
      setUseFieldNames(false);
      setContentStart("");
      setContentEnd("");
    }
    
    private Object readResolve()
    {
      return ToStringStyle.SIMPLE_STYLE;
    }
  }
}

/* Location:
 * Qualified Name:     org.apache.commons.lang3.builder.ToStringStyle
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */