package org.apache.commons.lang3.text;

import java.util.ArrayList;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Properties;
import org.apache.commons.lang3.StringUtils;

public class StrSubstitutor
{
  public static final char DEFAULT_ESCAPE = '$';
  public static final StrMatcher DEFAULT_PREFIX = StrMatcher.stringMatcher("${");
  public static final StrMatcher DEFAULT_SUFFIX = StrMatcher.stringMatcher("}");
  public static final StrMatcher DEFAULT_VALUE_DELIMITER = StrMatcher.stringMatcher(":-");
  private boolean enableSubstitutionInVariables;
  private char escapeChar;
  private StrMatcher prefixMatcher;
  private StrMatcher suffixMatcher;
  private StrMatcher valueDelimiterMatcher;
  private StrLookup<?> variableResolver;
  
  public StrSubstitutor()
  {
    this(null, DEFAULT_PREFIX, DEFAULT_SUFFIX, '$');
  }
  
  public <V> StrSubstitutor(Map<String, V> paramMap)
  {
    this(StrLookup.mapLookup(paramMap), DEFAULT_PREFIX, DEFAULT_SUFFIX, '$');
  }
  
  public <V> StrSubstitutor(Map<String, V> paramMap, String paramString1, String paramString2)
  {
    this(StrLookup.mapLookup(paramMap), paramString1, paramString2, '$');
  }
  
  public <V> StrSubstitutor(Map<String, V> paramMap, String paramString1, String paramString2, char paramChar)
  {
    this(StrLookup.mapLookup(paramMap), paramString1, paramString2, paramChar);
  }
  
  public <V> StrSubstitutor(Map<String, V> paramMap, String paramString1, String paramString2, char paramChar, String paramString3)
  {
    this(StrLookup.mapLookup(paramMap), paramString1, paramString2, paramChar, paramString3);
  }
  
  public StrSubstitutor(StrLookup<?> paramStrLookup)
  {
    this(paramStrLookup, DEFAULT_PREFIX, DEFAULT_SUFFIX, '$');
  }
  
  public StrSubstitutor(StrLookup<?> paramStrLookup, String paramString1, String paramString2, char paramChar)
  {
    setVariableResolver(paramStrLookup);
    setVariablePrefix(paramString1);
    setVariableSuffix(paramString2);
    setEscapeChar(paramChar);
    setValueDelimiterMatcher(DEFAULT_VALUE_DELIMITER);
  }
  
  public StrSubstitutor(StrLookup<?> paramStrLookup, String paramString1, String paramString2, char paramChar, String paramString3)
  {
    setVariableResolver(paramStrLookup);
    setVariablePrefix(paramString1);
    setVariableSuffix(paramString2);
    setEscapeChar(paramChar);
    setValueDelimiter(paramString3);
  }
  
  public StrSubstitutor(StrLookup<?> paramStrLookup, StrMatcher paramStrMatcher1, StrMatcher paramStrMatcher2, char paramChar)
  {
    this(paramStrLookup, paramStrMatcher1, paramStrMatcher2, paramChar, DEFAULT_VALUE_DELIMITER);
  }
  
  public StrSubstitutor(StrLookup<?> paramStrLookup, StrMatcher paramStrMatcher1, StrMatcher paramStrMatcher2, char paramChar, StrMatcher paramStrMatcher3)
  {
    setVariableResolver(paramStrLookup);
    setVariablePrefixMatcher(paramStrMatcher1);
    setVariableSuffixMatcher(paramStrMatcher2);
    setEscapeChar(paramChar);
    setValueDelimiterMatcher(paramStrMatcher3);
  }
  
  private void checkCyclicSubstitution(String paramString, List<String> paramList)
  {
    if (!paramList.contains(paramString)) {
      return;
    }
    paramString = new StrBuilder(256);
    paramString.append("Infinite loop in property interpolation of ");
    paramString.append((String)paramList.remove(0));
    paramString.append(": ");
    paramString.appendWithSeparators(paramList, "->");
    throw new IllegalStateException(paramString.toString());
  }
  
  public static <V> String replace(Object paramObject, Map<String, V> paramMap)
  {
    return new StrSubstitutor(paramMap).replace(paramObject);
  }
  
  public static <V> String replace(Object paramObject, Map<String, V> paramMap, String paramString1, String paramString2)
  {
    return new StrSubstitutor(paramMap, paramString1, paramString2).replace(paramObject);
  }
  
  public static String replace(Object paramObject, Properties paramProperties)
  {
    if (paramProperties == null) {
      return paramObject.toString();
    }
    HashMap localHashMap = new HashMap();
    Enumeration localEnumeration = paramProperties.propertyNames();
    while (localEnumeration.hasMoreElements())
    {
      String str = (String)localEnumeration.nextElement();
      localHashMap.put(str, paramProperties.getProperty(str));
    }
    return replace(paramObject, localHashMap);
  }
  
  public static String replaceSystemProperties(Object paramObject)
  {
    return new StrSubstitutor(StrLookup.systemPropertiesLookup()).replace(paramObject);
  }
  
  private int substitute(StrBuilder paramStrBuilder, int paramInt1, int paramInt2, List<String> paramList)
  {
    StrMatcher localStrMatcher1 = getVariablePrefixMatcher();
    StrMatcher localStrMatcher2 = getVariableSuffixMatcher();
    int i5 = getEscapeChar();
    StrMatcher localStrMatcher3 = getValueDelimiterMatcher();
    boolean bool = isEnableSubstitutionInVariables();
    int i2;
    int n;
    int j;
    Object localObject1;
    int m;
    int k;
    Object localObject2;
    if (paramList == null)
    {
      i2 = 1;
      n = 0;
      j = 0;
      localObject1 = buffer;
      m = paramInt1 + paramInt2;
      k = paramInt1;
      localObject2 = paramList;
      paramList = (List<String>)localObject1;
    }
    int i3;
    int i;
    int i1;
    label168:
    int i4;
    Object localObject3;
    label334:
    Object localObject4;
    for (;;)
    {
      if (k < m)
      {
        i3 = localStrMatcher1.isMatch(paramList, k, paramInt1, m);
        if (i3 == 0)
        {
          k += 1;
          continue;
          i2 = 0;
          break;
        }
        if ((k > paramInt1) && (paramList[(k - 1)] == i5))
        {
          paramStrBuilder.deleteCharAt(k - 1);
          paramList = buffer;
          j -= 1;
          n = 1;
          m -= 1;
        }
        else
        {
          i = k + i3;
          i1 = 0;
          for (;;)
          {
            if (i < m)
            {
              if (bool)
              {
                i4 = localStrMatcher1.isMatch(paramList, i, paramInt1, m);
                if (i4 != 0)
                {
                  i1 += 1;
                  i += i4;
                  continue;
                }
              }
              i4 = localStrMatcher2.isMatch(paramList, i, paramInt1, m);
              if (i4 == 0)
              {
                i += 1;
              }
              else if (i1 == 0)
              {
                localObject3 = new String(paramList, k + i3, i - k - i3);
                localObject1 = localObject3;
                if (bool)
                {
                  localObject1 = new StrBuilder((String)localObject3);
                  substitute((StrBuilder)localObject1, 0, ((StrBuilder)localObject1).length());
                  localObject1 = ((StrBuilder)localObject1).toString();
                }
                i4 = i + i4;
                if (localStrMatcher3 == null) {
                  break label648;
                }
                localObject3 = ((String)localObject1).toCharArray();
                i = 0;
                if ((i >= localObject3.length) || ((!bool) && (localStrMatcher1.isMatch((char[])localObject3, i, i, localObject3.length) != 0))) {
                  break label648;
                }
                i1 = localStrMatcher3.isMatch((char[])localObject3, i);
                if (i1 != 0)
                {
                  localObject4 = ((String)localObject1).substring(0, i);
                  localObject1 = ((String)localObject1).substring(i + i1);
                  label402:
                  localObject3 = localObject2;
                  if (localObject2 == null)
                  {
                    localObject3 = new ArrayList();
                    ((List)localObject3).add(new String(paramList, paramInt1, paramInt2));
                  }
                  checkCyclicSubstitution((String)localObject4, (List)localObject3);
                  ((List)localObject3).add(localObject4);
                  localObject2 = resolveVariable((String)localObject4, paramStrBuilder, k, i4);
                  if (localObject2 != null) {
                    break label662;
                  }
                }
              }
            }
          }
        }
      }
    }
    for (;;)
    {
      i = i4;
      i3 = m;
      i1 = j;
      if (localObject1 != null)
      {
        i = ((String)localObject1).length();
        paramStrBuilder.replace(k, i4, (String)localObject1);
        n = 1;
        k = i + substitute(paramStrBuilder, k, i, (List)localObject3) - (i4 - k);
        i = i4 + k;
        i3 = m + k;
        i1 = j + k;
        paramList = buffer;
      }
      ((List)localObject3).remove(((List)localObject3).size() - 1);
      localObject2 = localObject3;
      m = i3;
      j = i1;
      k = i;
      break;
      i += 1;
      break label334;
      i1 -= 1;
      i += i4;
      break label168;
      k = i;
      break;
      if (i2 != 0)
      {
        if (n != 0) {
          j = 1;
        }
      }
      else {
        return j;
      }
      return 0;
      label648:
      localObject3 = null;
      localObject4 = localObject1;
      localObject1 = localObject3;
      break label402;
      label662:
      localObject1 = localObject2;
    }
  }
  
  public char getEscapeChar()
  {
    return escapeChar;
  }
  
  public StrMatcher getValueDelimiterMatcher()
  {
    return valueDelimiterMatcher;
  }
  
  public StrMatcher getVariablePrefixMatcher()
  {
    return prefixMatcher;
  }
  
  public StrLookup<?> getVariableResolver()
  {
    return variableResolver;
  }
  
  public StrMatcher getVariableSuffixMatcher()
  {
    return suffixMatcher;
  }
  
  public boolean isEnableSubstitutionInVariables()
  {
    return enableSubstitutionInVariables;
  }
  
  public String replace(CharSequence paramCharSequence)
  {
    if (paramCharSequence == null) {
      return null;
    }
    return replace(paramCharSequence, 0, paramCharSequence.length());
  }
  
  public String replace(CharSequence paramCharSequence, int paramInt1, int paramInt2)
  {
    if (paramCharSequence == null) {
      return null;
    }
    paramCharSequence = new StrBuilder(paramInt2).append(paramCharSequence, paramInt1, paramInt2);
    substitute(paramCharSequence, 0, paramInt2);
    return paramCharSequence.toString();
  }
  
  public String replace(Object paramObject)
  {
    if (paramObject == null) {
      return null;
    }
    paramObject = new StrBuilder().append(paramObject);
    substitute((StrBuilder)paramObject, 0, ((StrBuilder)paramObject).length());
    return ((StrBuilder)paramObject).toString();
  }
  
  public String replace(String paramString)
  {
    String str;
    if (paramString == null) {
      str = null;
    }
    StrBuilder localStrBuilder;
    do
    {
      return str;
      localStrBuilder = new StrBuilder(paramString);
      str = paramString;
    } while (!substitute(localStrBuilder, 0, paramString.length()));
    return localStrBuilder.toString();
  }
  
  public String replace(String paramString, int paramInt1, int paramInt2)
  {
    if (paramString == null) {
      return null;
    }
    StrBuilder localStrBuilder = new StrBuilder(paramInt2).append(paramString, paramInt1, paramInt2);
    if (!substitute(localStrBuilder, 0, paramInt2)) {
      return paramString.substring(paramInt1, paramInt1 + paramInt2);
    }
    return localStrBuilder.toString();
  }
  
  public String replace(StringBuffer paramStringBuffer)
  {
    if (paramStringBuffer == null) {
      return null;
    }
    paramStringBuffer = new StrBuilder(paramStringBuffer.length()).append(paramStringBuffer);
    substitute(paramStringBuffer, 0, paramStringBuffer.length());
    return paramStringBuffer.toString();
  }
  
  public String replace(StringBuffer paramStringBuffer, int paramInt1, int paramInt2)
  {
    if (paramStringBuffer == null) {
      return null;
    }
    paramStringBuffer = new StrBuilder(paramInt2).append(paramStringBuffer, paramInt1, paramInt2);
    substitute(paramStringBuffer, 0, paramInt2);
    return paramStringBuffer.toString();
  }
  
  public String replace(StrBuilder paramStrBuilder)
  {
    if (paramStrBuilder == null) {
      return null;
    }
    paramStrBuilder = new StrBuilder(paramStrBuilder.length()).append(paramStrBuilder);
    substitute(paramStrBuilder, 0, paramStrBuilder.length());
    return paramStrBuilder.toString();
  }
  
  public String replace(StrBuilder paramStrBuilder, int paramInt1, int paramInt2)
  {
    if (paramStrBuilder == null) {
      return null;
    }
    paramStrBuilder = new StrBuilder(paramInt2).append(paramStrBuilder, paramInt1, paramInt2);
    substitute(paramStrBuilder, 0, paramInt2);
    return paramStrBuilder.toString();
  }
  
  public String replace(char[] paramArrayOfChar)
  {
    if (paramArrayOfChar == null) {
      return null;
    }
    StrBuilder localStrBuilder = new StrBuilder(paramArrayOfChar.length).append(paramArrayOfChar);
    substitute(localStrBuilder, 0, paramArrayOfChar.length);
    return localStrBuilder.toString();
  }
  
  public String replace(char[] paramArrayOfChar, int paramInt1, int paramInt2)
  {
    if (paramArrayOfChar == null) {
      return null;
    }
    paramArrayOfChar = new StrBuilder(paramInt2).append(paramArrayOfChar, paramInt1, paramInt2);
    substitute(paramArrayOfChar, 0, paramInt2);
    return paramArrayOfChar.toString();
  }
  
  public boolean replaceIn(StringBuffer paramStringBuffer)
  {
    if (paramStringBuffer == null) {
      return false;
    }
    return replaceIn(paramStringBuffer, 0, paramStringBuffer.length());
  }
  
  public boolean replaceIn(StringBuffer paramStringBuffer, int paramInt1, int paramInt2)
  {
    if (paramStringBuffer == null) {}
    StrBuilder localStrBuilder;
    do
    {
      return false;
      localStrBuilder = new StrBuilder(paramInt2).append(paramStringBuffer, paramInt1, paramInt2);
    } while (!substitute(localStrBuilder, 0, paramInt2));
    paramStringBuffer.replace(paramInt1, paramInt1 + paramInt2, localStrBuilder.toString());
    return true;
  }
  
  public boolean replaceIn(StringBuilder paramStringBuilder)
  {
    if (paramStringBuilder == null) {
      return false;
    }
    return replaceIn(paramStringBuilder, 0, paramStringBuilder.length());
  }
  
  public boolean replaceIn(StringBuilder paramStringBuilder, int paramInt1, int paramInt2)
  {
    if (paramStringBuilder == null) {}
    StrBuilder localStrBuilder;
    do
    {
      return false;
      localStrBuilder = new StrBuilder(paramInt2).append(paramStringBuilder, paramInt1, paramInt2);
    } while (!substitute(localStrBuilder, 0, paramInt2));
    paramStringBuilder.replace(paramInt1, paramInt1 + paramInt2, localStrBuilder.toString());
    return true;
  }
  
  public boolean replaceIn(StrBuilder paramStrBuilder)
  {
    if (paramStrBuilder == null) {
      return false;
    }
    return substitute(paramStrBuilder, 0, paramStrBuilder.length());
  }
  
  public boolean replaceIn(StrBuilder paramStrBuilder, int paramInt1, int paramInt2)
  {
    if (paramStrBuilder == null) {
      return false;
    }
    return substitute(paramStrBuilder, paramInt1, paramInt2);
  }
  
  protected String resolveVariable(String paramString, StrBuilder paramStrBuilder, int paramInt1, int paramInt2)
  {
    paramStrBuilder = getVariableResolver();
    if (paramStrBuilder == null) {
      return null;
    }
    return paramStrBuilder.lookup(paramString);
  }
  
  public void setEnableSubstitutionInVariables(boolean paramBoolean)
  {
    enableSubstitutionInVariables = paramBoolean;
  }
  
  public void setEscapeChar(char paramChar)
  {
    escapeChar = paramChar;
  }
  
  public StrSubstitutor setValueDelimiter(char paramChar)
  {
    return setValueDelimiterMatcher(StrMatcher.charMatcher(paramChar));
  }
  
  public StrSubstitutor setValueDelimiter(String paramString)
  {
    if (StringUtils.isEmpty(paramString))
    {
      setValueDelimiterMatcher(null);
      return this;
    }
    return setValueDelimiterMatcher(StrMatcher.stringMatcher(paramString));
  }
  
  public StrSubstitutor setValueDelimiterMatcher(StrMatcher paramStrMatcher)
  {
    valueDelimiterMatcher = paramStrMatcher;
    return this;
  }
  
  public StrSubstitutor setVariablePrefix(char paramChar)
  {
    return setVariablePrefixMatcher(StrMatcher.charMatcher(paramChar));
  }
  
  public StrSubstitutor setVariablePrefix(String paramString)
  {
    if (paramString == null) {
      throw new IllegalArgumentException("Variable prefix must not be null!");
    }
    return setVariablePrefixMatcher(StrMatcher.stringMatcher(paramString));
  }
  
  public StrSubstitutor setVariablePrefixMatcher(StrMatcher paramStrMatcher)
  {
    if (paramStrMatcher == null) {
      throw new IllegalArgumentException("Variable prefix matcher must not be null!");
    }
    prefixMatcher = paramStrMatcher;
    return this;
  }
  
  public void setVariableResolver(StrLookup<?> paramStrLookup)
  {
    variableResolver = paramStrLookup;
  }
  
  public StrSubstitutor setVariableSuffix(char paramChar)
  {
    return setVariableSuffixMatcher(StrMatcher.charMatcher(paramChar));
  }
  
  public StrSubstitutor setVariableSuffix(String paramString)
  {
    if (paramString == null) {
      throw new IllegalArgumentException("Variable suffix must not be null!");
    }
    return setVariableSuffixMatcher(StrMatcher.stringMatcher(paramString));
  }
  
  public StrSubstitutor setVariableSuffixMatcher(StrMatcher paramStrMatcher)
  {
    if (paramStrMatcher == null) {
      throw new IllegalArgumentException("Variable suffix matcher must not be null!");
    }
    suffixMatcher = paramStrMatcher;
    return this;
  }
  
  protected boolean substitute(StrBuilder paramStrBuilder, int paramInt1, int paramInt2)
  {
    return substitute(paramStrBuilder, paramInt1, paramInt2, null) > 0;
  }
}

/* Location:
 * Qualified Name:     org.apache.commons.lang3.text.StrSubstitutor
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */