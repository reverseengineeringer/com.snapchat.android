package org.apache.commons.lang3.text;

import java.io.Reader;
import java.io.Serializable;
import java.io.Writer;
import java.util.Iterator;
import java.util.List;
import org.apache.commons.lang3.ArrayUtils;
import org.apache.commons.lang3.ObjectUtils;
import org.apache.commons.lang3.SystemUtils;
import org.apache.commons.lang3.builder.Builder;

public class StrBuilder
  implements Serializable, Appendable, CharSequence, Builder<String>
{
  static final int CAPACITY = 32;
  private static final long serialVersionUID = 7628716375283629643L;
  protected char[] buffer;
  private String newLine;
  private String nullText;
  protected int size;
  
  public StrBuilder()
  {
    this(32);
  }
  
  public StrBuilder(int paramInt)
  {
    int i = paramInt;
    if (paramInt <= 0) {
      i = 32;
    }
    buffer = new char[i];
  }
  
  public StrBuilder(String paramString)
  {
    if (paramString == null)
    {
      buffer = new char[32];
      return;
    }
    buffer = new char[paramString.length() + 32];
    append(paramString);
  }
  
  private void deleteImpl(int paramInt1, int paramInt2, int paramInt3)
  {
    System.arraycopy(buffer, paramInt2, buffer, paramInt1, size - paramInt2);
    size -= paramInt3;
  }
  
  private StrBuilder replaceImpl(StrMatcher paramStrMatcher, String paramString, int paramInt1, int paramInt2, int paramInt3)
  {
    if ((paramStrMatcher == null) || (size == 0)) {
      return this;
    }
    int j;
    label20:
    int k;
    int i;
    if (paramString == null)
    {
      j = 0;
      char[] arrayOfChar = buffer;
      k = paramInt1;
      i = paramInt2;
      paramInt2 = paramInt3;
      paramInt3 = k;
      label41:
      if ((paramInt3 < i) && (paramInt2 != 0))
      {
        k = paramStrMatcher.isMatch(arrayOfChar, paramInt3, paramInt1, i);
        if (k <= 0) {
          break label154;
        }
        replaceImpl(paramInt3, paramInt3 + k, k, paramString, j);
        k = i - k + j;
        i = paramInt3 + j - 1;
        if (paramInt2 <= 0) {
          break label147;
        }
        paramInt2 -= 1;
        paramInt3 = k;
      }
    }
    for (;;)
    {
      k = i + 1;
      i = paramInt3;
      paramInt3 = k;
      break label41;
      break;
      j = paramString.length();
      break label20;
      label147:
      paramInt3 = k;
      continue;
      label154:
      k = i;
      i = paramInt3;
      paramInt3 = k;
    }
  }
  
  private void replaceImpl(int paramInt1, int paramInt2, int paramInt3, String paramString, int paramInt4)
  {
    int i = size - paramInt3 + paramInt4;
    if (paramInt4 != paramInt3)
    {
      ensureCapacity(i);
      System.arraycopy(buffer, paramInt2, buffer, paramInt1 + paramInt4, size - paramInt2);
      size = i;
    }
    if (paramInt4 > 0) {
      paramString.getChars(0, paramInt4, buffer, paramInt1);
    }
  }
  
  public StrBuilder append(char paramChar)
  {
    ensureCapacity(length() + 1);
    char[] arrayOfChar = buffer;
    int i = size;
    size = (i + 1);
    arrayOfChar[i] = paramChar;
    return this;
  }
  
  public StrBuilder append(double paramDouble)
  {
    return append(String.valueOf(paramDouble));
  }
  
  public StrBuilder append(float paramFloat)
  {
    return append(String.valueOf(paramFloat));
  }
  
  public StrBuilder append(int paramInt)
  {
    return append(String.valueOf(paramInt));
  }
  
  public StrBuilder append(long paramLong)
  {
    return append(String.valueOf(paramLong));
  }
  
  public StrBuilder append(CharSequence paramCharSequence)
  {
    if (paramCharSequence == null) {
      return appendNull();
    }
    return append(paramCharSequence.toString());
  }
  
  public StrBuilder append(CharSequence paramCharSequence, int paramInt1, int paramInt2)
  {
    if (paramCharSequence == null) {
      return appendNull();
    }
    return append(paramCharSequence.toString(), paramInt1, paramInt2);
  }
  
  public StrBuilder append(Object paramObject)
  {
    if (paramObject == null) {
      return appendNull();
    }
    return append(paramObject.toString());
  }
  
  public StrBuilder append(String paramString)
  {
    StrBuilder localStrBuilder;
    if (paramString == null) {
      localStrBuilder = appendNull();
    }
    int i;
    do
    {
      return localStrBuilder;
      i = paramString.length();
      localStrBuilder = this;
    } while (i <= 0);
    int j = length();
    ensureCapacity(j + i);
    paramString.getChars(0, i, buffer, j);
    size = (i + size);
    return this;
  }
  
  public StrBuilder append(String paramString, int paramInt1, int paramInt2)
  {
    StrBuilder localStrBuilder;
    if (paramString == null) {
      localStrBuilder = appendNull();
    }
    do
    {
      return localStrBuilder;
      if ((paramInt1 < 0) || (paramInt1 > paramString.length())) {
        throw new StringIndexOutOfBoundsException("startIndex must be valid");
      }
      if ((paramInt2 < 0) || (paramInt1 + paramInt2 > paramString.length())) {
        throw new StringIndexOutOfBoundsException("length must be valid");
      }
      localStrBuilder = this;
    } while (paramInt2 <= 0);
    int i = length();
    ensureCapacity(i + paramInt2);
    paramString.getChars(paramInt1, paramInt1 + paramInt2, buffer, i);
    size += paramInt2;
    return this;
  }
  
  public StrBuilder append(String paramString, Object... paramVarArgs)
  {
    return append(String.format(paramString, paramVarArgs));
  }
  
  public StrBuilder append(StringBuffer paramStringBuffer)
  {
    StrBuilder localStrBuilder;
    if (paramStringBuffer == null) {
      localStrBuilder = appendNull();
    }
    int i;
    do
    {
      return localStrBuilder;
      i = paramStringBuffer.length();
      localStrBuilder = this;
    } while (i <= 0);
    int j = length();
    ensureCapacity(j + i);
    paramStringBuffer.getChars(0, i, buffer, j);
    size = (i + size);
    return this;
  }
  
  public StrBuilder append(StringBuffer paramStringBuffer, int paramInt1, int paramInt2)
  {
    StrBuilder localStrBuilder;
    if (paramStringBuffer == null) {
      localStrBuilder = appendNull();
    }
    do
    {
      return localStrBuilder;
      if ((paramInt1 < 0) || (paramInt1 > paramStringBuffer.length())) {
        throw new StringIndexOutOfBoundsException("startIndex must be valid");
      }
      if ((paramInt2 < 0) || (paramInt1 + paramInt2 > paramStringBuffer.length())) {
        throw new StringIndexOutOfBoundsException("length must be valid");
      }
      localStrBuilder = this;
    } while (paramInt2 <= 0);
    int i = length();
    ensureCapacity(i + paramInt2);
    paramStringBuffer.getChars(paramInt1, paramInt1 + paramInt2, buffer, i);
    size += paramInt2;
    return this;
  }
  
  public StrBuilder append(StringBuilder paramStringBuilder)
  {
    StrBuilder localStrBuilder;
    if (paramStringBuilder == null) {
      localStrBuilder = appendNull();
    }
    int i;
    do
    {
      return localStrBuilder;
      i = paramStringBuilder.length();
      localStrBuilder = this;
    } while (i <= 0);
    int j = length();
    ensureCapacity(j + i);
    paramStringBuilder.getChars(0, i, buffer, j);
    size = (i + size);
    return this;
  }
  
  public StrBuilder append(StringBuilder paramStringBuilder, int paramInt1, int paramInt2)
  {
    StrBuilder localStrBuilder;
    if (paramStringBuilder == null) {
      localStrBuilder = appendNull();
    }
    do
    {
      return localStrBuilder;
      if ((paramInt1 < 0) || (paramInt1 > paramStringBuilder.length())) {
        throw new StringIndexOutOfBoundsException("startIndex must be valid");
      }
      if ((paramInt2 < 0) || (paramInt1 + paramInt2 > paramStringBuilder.length())) {
        throw new StringIndexOutOfBoundsException("length must be valid");
      }
      localStrBuilder = this;
    } while (paramInt2 <= 0);
    int i = length();
    ensureCapacity(i + paramInt2);
    paramStringBuilder.getChars(paramInt1, paramInt1 + paramInt2, buffer, i);
    size += paramInt2;
    return this;
  }
  
  public StrBuilder append(StrBuilder paramStrBuilder)
  {
    StrBuilder localStrBuilder;
    if (paramStrBuilder == null) {
      localStrBuilder = appendNull();
    }
    int i;
    do
    {
      return localStrBuilder;
      i = paramStrBuilder.length();
      localStrBuilder = this;
    } while (i <= 0);
    int j = length();
    ensureCapacity(j + i);
    System.arraycopy(buffer, 0, buffer, j, i);
    size = (i + size);
    return this;
  }
  
  public StrBuilder append(StrBuilder paramStrBuilder, int paramInt1, int paramInt2)
  {
    StrBuilder localStrBuilder;
    if (paramStrBuilder == null) {
      localStrBuilder = appendNull();
    }
    do
    {
      return localStrBuilder;
      if ((paramInt1 < 0) || (paramInt1 > paramStrBuilder.length())) {
        throw new StringIndexOutOfBoundsException("startIndex must be valid");
      }
      if ((paramInt2 < 0) || (paramInt1 + paramInt2 > paramStrBuilder.length())) {
        throw new StringIndexOutOfBoundsException("length must be valid");
      }
      localStrBuilder = this;
    } while (paramInt2 <= 0);
    int i = length();
    ensureCapacity(i + paramInt2);
    paramStrBuilder.getChars(paramInt1, paramInt1 + paramInt2, buffer, i);
    size += paramInt2;
    return this;
  }
  
  public StrBuilder append(boolean paramBoolean)
  {
    if (paramBoolean)
    {
      ensureCapacity(size + 4);
      arrayOfChar = buffer;
      i = size;
      size = (i + 1);
      arrayOfChar[i] = 't';
      arrayOfChar = buffer;
      i = size;
      size = (i + 1);
      arrayOfChar[i] = 'r';
      arrayOfChar = buffer;
      i = size;
      size = (i + 1);
      arrayOfChar[i] = 'u';
      arrayOfChar = buffer;
      i = size;
      size = (i + 1);
      arrayOfChar[i] = 'e';
      return this;
    }
    ensureCapacity(size + 5);
    char[] arrayOfChar = buffer;
    int i = size;
    size = (i + 1);
    arrayOfChar[i] = 'f';
    arrayOfChar = buffer;
    i = size;
    size = (i + 1);
    arrayOfChar[i] = 'a';
    arrayOfChar = buffer;
    i = size;
    size = (i + 1);
    arrayOfChar[i] = 'l';
    arrayOfChar = buffer;
    i = size;
    size = (i + 1);
    arrayOfChar[i] = 's';
    arrayOfChar = buffer;
    i = size;
    size = (i + 1);
    arrayOfChar[i] = 'e';
    return this;
  }
  
  public StrBuilder append(char[] paramArrayOfChar)
  {
    StrBuilder localStrBuilder;
    if (paramArrayOfChar == null) {
      localStrBuilder = appendNull();
    }
    int i;
    do
    {
      return localStrBuilder;
      i = paramArrayOfChar.length;
      localStrBuilder = this;
    } while (i <= 0);
    int j = length();
    ensureCapacity(j + i);
    System.arraycopy(paramArrayOfChar, 0, buffer, j, i);
    size = (i + size);
    return this;
  }
  
  public StrBuilder append(char[] paramArrayOfChar, int paramInt1, int paramInt2)
  {
    StrBuilder localStrBuilder;
    if (paramArrayOfChar == null) {
      localStrBuilder = appendNull();
    }
    do
    {
      return localStrBuilder;
      if ((paramInt1 < 0) || (paramInt1 > paramArrayOfChar.length)) {
        throw new StringIndexOutOfBoundsException("Invalid startIndex: " + paramInt2);
      }
      if ((paramInt2 < 0) || (paramInt1 + paramInt2 > paramArrayOfChar.length)) {
        throw new StringIndexOutOfBoundsException("Invalid length: " + paramInt2);
      }
      localStrBuilder = this;
    } while (paramInt2 <= 0);
    int i = length();
    ensureCapacity(i + paramInt2);
    System.arraycopy(paramArrayOfChar, paramInt1, buffer, i, paramInt2);
    size += paramInt2;
    return this;
  }
  
  public StrBuilder appendAll(Iterable<?> paramIterable)
  {
    if (paramIterable != null)
    {
      paramIterable = paramIterable.iterator();
      while (paramIterable.hasNext()) {
        append(paramIterable.next());
      }
    }
    return this;
  }
  
  public StrBuilder appendAll(Iterator<?> paramIterator)
  {
    if (paramIterator != null) {
      while (paramIterator.hasNext()) {
        append(paramIterator.next());
      }
    }
    return this;
  }
  
  public <T> StrBuilder appendAll(T... paramVarArgs)
  {
    if ((paramVarArgs != null) && (paramVarArgs.length > 0))
    {
      int j = paramVarArgs.length;
      int i = 0;
      while (i < j)
      {
        append(paramVarArgs[i]);
        i += 1;
      }
    }
    return this;
  }
  
  public StrBuilder appendFixedWidthPadLeft(int paramInt1, int paramInt2, char paramChar)
  {
    return appendFixedWidthPadLeft(String.valueOf(paramInt1), paramInt2, paramChar);
  }
  
  public StrBuilder appendFixedWidthPadLeft(Object paramObject, int paramInt, char paramChar)
  {
    Object localObject;
    int j;
    if (paramInt > 0)
    {
      ensureCapacity(size + paramInt);
      if (paramObject != null) {
        break label79;
      }
      paramObject = getNullText();
      localObject = paramObject;
      if (paramObject == null) {
        localObject = "";
      }
      j = ((String)localObject).length();
      if (j < paramInt) {
        break label87;
      }
      ((String)localObject).getChars(j - paramInt, j, buffer, size);
    }
    for (;;)
    {
      size += paramInt;
      return this;
      label79:
      paramObject = paramObject.toString();
      break;
      label87:
      int k = paramInt - j;
      int i = 0;
      while (i < k)
      {
        buffer[(size + i)] = paramChar;
        i += 1;
      }
      ((String)localObject).getChars(0, j, buffer, k + size);
    }
  }
  
  public StrBuilder appendFixedWidthPadRight(int paramInt1, int paramInt2, char paramChar)
  {
    return appendFixedWidthPadRight(String.valueOf(paramInt1), paramInt2, paramChar);
  }
  
  public StrBuilder appendFixedWidthPadRight(Object paramObject, int paramInt, char paramChar)
  {
    Object localObject;
    int j;
    if (paramInt > 0)
    {
      ensureCapacity(size + paramInt);
      if (paramObject != null) {
        break label75;
      }
      paramObject = getNullText();
      localObject = paramObject;
      if (paramObject == null) {
        localObject = "";
      }
      j = ((String)localObject).length();
      if (j < paramInt) {
        break label83;
      }
      ((String)localObject).getChars(0, paramInt, buffer, size);
    }
    for (;;)
    {
      size += paramInt;
      return this;
      label75:
      paramObject = paramObject.toString();
      break;
      label83:
      ((String)localObject).getChars(0, j, buffer, size);
      int i = 0;
      while (i < paramInt - j)
      {
        buffer[(size + j + i)] = paramChar;
        i += 1;
      }
    }
  }
  
  public StrBuilder appendNewLine()
  {
    if (newLine == null)
    {
      append(SystemUtils.LINE_SEPARATOR);
      return this;
    }
    return append(newLine);
  }
  
  public StrBuilder appendNull()
  {
    if (nullText == null) {
      return this;
    }
    return append(nullText);
  }
  
  public StrBuilder appendPadding(int paramInt, char paramChar)
  {
    if (paramInt >= 0)
    {
      ensureCapacity(size + paramInt);
      int i = 0;
      while (i < paramInt)
      {
        char[] arrayOfChar = buffer;
        int j = size;
        size = (j + 1);
        arrayOfChar[j] = paramChar;
        i += 1;
      }
    }
    return this;
  }
  
  public StrBuilder appendSeparator(char paramChar)
  {
    if (size() > 0) {
      append(paramChar);
    }
    return this;
  }
  
  public StrBuilder appendSeparator(char paramChar1, char paramChar2)
  {
    if (size() > 0)
    {
      append(paramChar1);
      return this;
    }
    append(paramChar2);
    return this;
  }
  
  public StrBuilder appendSeparator(char paramChar, int paramInt)
  {
    if (paramInt > 0) {
      append(paramChar);
    }
    return this;
  }
  
  public StrBuilder appendSeparator(String paramString)
  {
    return appendSeparator(paramString, null);
  }
  
  public StrBuilder appendSeparator(String paramString, int paramInt)
  {
    if ((paramString != null) && (paramInt > 0)) {
      append(paramString);
    }
    return this;
  }
  
  public StrBuilder appendSeparator(String paramString1, String paramString2)
  {
    if (isEmpty()) {}
    for (;;)
    {
      if (paramString2 != null) {
        append(paramString2);
      }
      return this;
      paramString2 = paramString1;
    }
  }
  
  public StrBuilder appendWithSeparators(Iterable<?> paramIterable, String paramString)
  {
    if (paramIterable != null)
    {
      paramString = ObjectUtils.toString(paramString);
      paramIterable = paramIterable.iterator();
      while (paramIterable.hasNext())
      {
        append(paramIterable.next());
        if (paramIterable.hasNext()) {
          append(paramString);
        }
      }
    }
    return this;
  }
  
  public StrBuilder appendWithSeparators(Iterator<?> paramIterator, String paramString)
  {
    if (paramIterator != null)
    {
      paramString = ObjectUtils.toString(paramString);
      while (paramIterator.hasNext())
      {
        append(paramIterator.next());
        if (paramIterator.hasNext()) {
          append(paramString);
        }
      }
    }
    return this;
  }
  
  public StrBuilder appendWithSeparators(Object[] paramArrayOfObject, String paramString)
  {
    if ((paramArrayOfObject != null) && (paramArrayOfObject.length > 0))
    {
      paramString = ObjectUtils.toString(paramString);
      append(paramArrayOfObject[0]);
      int i = 1;
      while (i < paramArrayOfObject.length)
      {
        append(paramString);
        append(paramArrayOfObject[i]);
        i += 1;
      }
    }
    return this;
  }
  
  public StrBuilder appendln(char paramChar)
  {
    return append(paramChar).appendNewLine();
  }
  
  public StrBuilder appendln(double paramDouble)
  {
    return append(paramDouble).appendNewLine();
  }
  
  public StrBuilder appendln(float paramFloat)
  {
    return append(paramFloat).appendNewLine();
  }
  
  public StrBuilder appendln(int paramInt)
  {
    return append(paramInt).appendNewLine();
  }
  
  public StrBuilder appendln(long paramLong)
  {
    return append(paramLong).appendNewLine();
  }
  
  public StrBuilder appendln(Object paramObject)
  {
    return append(paramObject).appendNewLine();
  }
  
  public StrBuilder appendln(String paramString)
  {
    return append(paramString).appendNewLine();
  }
  
  public StrBuilder appendln(String paramString, int paramInt1, int paramInt2)
  {
    return append(paramString, paramInt1, paramInt2).appendNewLine();
  }
  
  public StrBuilder appendln(String paramString, Object... paramVarArgs)
  {
    return append(paramString, paramVarArgs).appendNewLine();
  }
  
  public StrBuilder appendln(StringBuffer paramStringBuffer)
  {
    return append(paramStringBuffer).appendNewLine();
  }
  
  public StrBuilder appendln(StringBuffer paramStringBuffer, int paramInt1, int paramInt2)
  {
    return append(paramStringBuffer, paramInt1, paramInt2).appendNewLine();
  }
  
  public StrBuilder appendln(StringBuilder paramStringBuilder)
  {
    return append(paramStringBuilder).appendNewLine();
  }
  
  public StrBuilder appendln(StringBuilder paramStringBuilder, int paramInt1, int paramInt2)
  {
    return append(paramStringBuilder, paramInt1, paramInt2).appendNewLine();
  }
  
  public StrBuilder appendln(StrBuilder paramStrBuilder)
  {
    return append(paramStrBuilder).appendNewLine();
  }
  
  public StrBuilder appendln(StrBuilder paramStrBuilder, int paramInt1, int paramInt2)
  {
    return append(paramStrBuilder, paramInt1, paramInt2).appendNewLine();
  }
  
  public StrBuilder appendln(boolean paramBoolean)
  {
    return append(paramBoolean).appendNewLine();
  }
  
  public StrBuilder appendln(char[] paramArrayOfChar)
  {
    return append(paramArrayOfChar).appendNewLine();
  }
  
  public StrBuilder appendln(char[] paramArrayOfChar, int paramInt1, int paramInt2)
  {
    return append(paramArrayOfChar, paramInt1, paramInt2).appendNewLine();
  }
  
  public Reader asReader()
  {
    return new StrBuilderReader();
  }
  
  public StrTokenizer asTokenizer()
  {
    return new StrBuilderTokenizer();
  }
  
  public Writer asWriter()
  {
    return new StrBuilderWriter();
  }
  
  public String build()
  {
    return toString();
  }
  
  public int capacity()
  {
    return buffer.length;
  }
  
  public char charAt(int paramInt)
  {
    if ((paramInt < 0) || (paramInt >= length())) {
      throw new StringIndexOutOfBoundsException(paramInt);
    }
    return buffer[paramInt];
  }
  
  public StrBuilder clear()
  {
    size = 0;
    return this;
  }
  
  public boolean contains(char paramChar)
  {
    boolean bool2 = false;
    char[] arrayOfChar = buffer;
    int i = 0;
    for (;;)
    {
      boolean bool1 = bool2;
      if (i < size)
      {
        if (arrayOfChar[i] == paramChar) {
          bool1 = true;
        }
      }
      else {
        return bool1;
      }
      i += 1;
    }
  }
  
  public boolean contains(String paramString)
  {
    boolean bool = false;
    if (indexOf(paramString, 0) >= 0) {
      bool = true;
    }
    return bool;
  }
  
  public boolean contains(StrMatcher paramStrMatcher)
  {
    boolean bool = false;
    if (indexOf(paramStrMatcher, 0) >= 0) {
      bool = true;
    }
    return bool;
  }
  
  public StrBuilder delete(int paramInt1, int paramInt2)
  {
    paramInt2 = validateRange(paramInt1, paramInt2);
    int i = paramInt2 - paramInt1;
    if (i > 0) {
      deleteImpl(paramInt1, paramInt2, i);
    }
    return this;
  }
  
  public StrBuilder deleteAll(char paramChar)
  {
    int j;
    for (int i = 0; i < size; i = j + 1)
    {
      j = i;
      if (buffer[i] == paramChar)
      {
        j = i;
        int k;
        do
        {
          k = j + 1;
          if (k >= size) {
            break;
          }
          j = k;
        } while (buffer[k] == paramChar);
        j = k - i;
        deleteImpl(i, k, j);
        j = k - j;
      }
    }
    return this;
  }
  
  public StrBuilder deleteAll(String paramString)
  {
    if (paramString == null) {}
    for (int i = 0; i > 0; i = paramString.length()) {
      for (int j = indexOf(paramString, 0); j >= 0; j = indexOf(paramString, j)) {
        deleteImpl(j, j + i, i);
      }
    }
    return this;
  }
  
  public StrBuilder deleteAll(StrMatcher paramStrMatcher)
  {
    return replace(paramStrMatcher, null, 0, size, -1);
  }
  
  public StrBuilder deleteCharAt(int paramInt)
  {
    if ((paramInt < 0) || (paramInt >= size)) {
      throw new StringIndexOutOfBoundsException(paramInt);
    }
    deleteImpl(paramInt, paramInt + 1, 1);
    return this;
  }
  
  public StrBuilder deleteFirst(char paramChar)
  {
    int i = 0;
    for (;;)
    {
      if (i < size)
      {
        if (buffer[i] == paramChar) {
          deleteImpl(i, i + 1, 1);
        }
      }
      else {
        return this;
      }
      i += 1;
    }
  }
  
  public StrBuilder deleteFirst(String paramString)
  {
    if (paramString == null) {}
    for (int i = 0;; i = paramString.length())
    {
      if (i > 0)
      {
        int j = indexOf(paramString, 0);
        if (j >= 0) {
          deleteImpl(j, j + i, i);
        }
      }
      return this;
    }
  }
  
  public StrBuilder deleteFirst(StrMatcher paramStrMatcher)
  {
    return replace(paramStrMatcher, null, 0, size, 1);
  }
  
  public boolean endsWith(String paramString)
  {
    if (paramString == null) {}
    int k;
    do
    {
      return false;
      k = paramString.length();
      if (k == 0) {
        return true;
      }
    } while (k > size);
    int i = size - k;
    int j = 0;
    for (;;)
    {
      if (j >= k) {
        break label69;
      }
      if (buffer[i] != paramString.charAt(j)) {
        break;
      }
      j += 1;
      i += 1;
    }
    label69:
    return true;
  }
  
  public StrBuilder ensureCapacity(int paramInt)
  {
    if (paramInt > buffer.length)
    {
      char[] arrayOfChar = buffer;
      buffer = new char[paramInt * 2];
      System.arraycopy(arrayOfChar, 0, buffer, 0, size);
    }
    return this;
  }
  
  public boolean equals(Object paramObject)
  {
    if ((paramObject instanceof StrBuilder)) {
      return equals((StrBuilder)paramObject);
    }
    return false;
  }
  
  public boolean equals(StrBuilder paramStrBuilder)
  {
    if (this == paramStrBuilder) {}
    for (;;)
    {
      return true;
      if (size != size) {
        return false;
      }
      char[] arrayOfChar = buffer;
      paramStrBuilder = buffer;
      int i = size - 1;
      while (i >= 0)
      {
        if (arrayOfChar[i] != paramStrBuilder[i]) {
          return false;
        }
        i -= 1;
      }
    }
  }
  
  public boolean equalsIgnoreCase(StrBuilder paramStrBuilder)
  {
    if (this == paramStrBuilder) {}
    for (;;)
    {
      return true;
      if (size != size) {
        return false;
      }
      char[] arrayOfChar = buffer;
      paramStrBuilder = buffer;
      int i = size - 1;
      while (i >= 0)
      {
        char c1 = arrayOfChar[i];
        char c2 = paramStrBuilder[i];
        if ((c1 != c2) && (Character.toUpperCase(c1) != Character.toUpperCase(c2))) {
          return false;
        }
        i -= 1;
      }
    }
  }
  
  public void getChars(int paramInt1, int paramInt2, char[] paramArrayOfChar, int paramInt3)
  {
    if (paramInt1 < 0) {
      throw new StringIndexOutOfBoundsException(paramInt1);
    }
    if ((paramInt2 < 0) || (paramInt2 > length())) {
      throw new StringIndexOutOfBoundsException(paramInt2);
    }
    if (paramInt1 > paramInt2) {
      throw new StringIndexOutOfBoundsException("end < start");
    }
    System.arraycopy(buffer, paramInt1, paramArrayOfChar, paramInt3, paramInt2 - paramInt1);
  }
  
  public char[] getChars(char[] paramArrayOfChar)
  {
    int i = length();
    char[] arrayOfChar;
    if (paramArrayOfChar != null)
    {
      arrayOfChar = paramArrayOfChar;
      if (paramArrayOfChar.length >= i) {}
    }
    else
    {
      arrayOfChar = new char[i];
    }
    System.arraycopy(buffer, 0, arrayOfChar, 0, i);
    return arrayOfChar;
  }
  
  public String getNewLineText()
  {
    return newLine;
  }
  
  public String getNullText()
  {
    return nullText;
  }
  
  public int hashCode()
  {
    char[] arrayOfChar = buffer;
    int j = 0;
    int i = size - 1;
    while (i >= 0)
    {
      j = j * 31 + arrayOfChar[i];
      i -= 1;
    }
    return j;
  }
  
  public int indexOf(char paramChar)
  {
    return indexOf(paramChar, 0);
  }
  
  public int indexOf(char paramChar, int paramInt)
  {
    int i = paramInt;
    if (paramInt < 0) {
      i = 0;
    }
    if (i >= size)
    {
      paramInt = -1;
      return paramInt;
    }
    char[] arrayOfChar = buffer;
    for (;;)
    {
      if (i >= size) {
        break label51;
      }
      paramInt = i;
      if (arrayOfChar[i] == paramChar) {
        break;
      }
      i += 1;
    }
    label51:
    return -1;
  }
  
  public int indexOf(String paramString)
  {
    return indexOf(paramString, 0);
  }
  
  public int indexOf(String paramString, int paramInt)
  {
    int i;
    if (paramInt < 0)
    {
      paramInt = 0;
      if ((paramString != null) && (paramInt < size)) {
        break label25;
      }
      i = -1;
    }
    label25:
    int k;
    do
    {
      return i;
      break;
      k = paramString.length();
      if (k == 1) {
        return indexOf(paramString.charAt(0), paramInt);
      }
      i = paramInt;
    } while (k == 0);
    if (k > size) {
      return -1;
    }
    char[] arrayOfChar = buffer;
    int m = size;
    for (;;)
    {
      if (paramInt >= m - k + 1) {
        break label133;
      }
      int j = 0;
      for (;;)
      {
        i = paramInt;
        if (j >= k) {
          break;
        }
        if (paramString.charAt(j) != arrayOfChar[(paramInt + j)]) {
          break label126;
        }
        j += 1;
      }
      label126:
      paramInt += 1;
    }
    label133:
    return -1;
  }
  
  public int indexOf(StrMatcher paramStrMatcher)
  {
    return indexOf(paramStrMatcher, 0);
  }
  
  public int indexOf(StrMatcher paramStrMatcher, int paramInt)
  {
    if (paramInt < 0) {
      paramInt = 0;
    }
    int j;
    while ((paramStrMatcher == null) || (paramInt >= size))
    {
      j = -1;
      return j;
    }
    int k = size;
    char[] arrayOfChar = buffer;
    int i = paramInt;
    for (;;)
    {
      if (i >= k) {
        break label70;
      }
      j = i;
      if (paramStrMatcher.isMatch(arrayOfChar, i, paramInt, k) > 0) {
        break;
      }
      i += 1;
    }
    label70:
    return -1;
  }
  
  public StrBuilder insert(int paramInt, char paramChar)
  {
    validateIndex(paramInt);
    ensureCapacity(size + 1);
    System.arraycopy(buffer, paramInt, buffer, paramInt + 1, size - paramInt);
    buffer[paramInt] = paramChar;
    size += 1;
    return this;
  }
  
  public StrBuilder insert(int paramInt, double paramDouble)
  {
    return insert(paramInt, String.valueOf(paramDouble));
  }
  
  public StrBuilder insert(int paramInt, float paramFloat)
  {
    return insert(paramInt, String.valueOf(paramFloat));
  }
  
  public StrBuilder insert(int paramInt1, int paramInt2)
  {
    return insert(paramInt1, String.valueOf(paramInt2));
  }
  
  public StrBuilder insert(int paramInt, long paramLong)
  {
    return insert(paramInt, String.valueOf(paramLong));
  }
  
  public StrBuilder insert(int paramInt, Object paramObject)
  {
    if (paramObject == null) {
      return insert(paramInt, nullText);
    }
    return insert(paramInt, paramObject.toString());
  }
  
  public StrBuilder insert(int paramInt, String paramString)
  {
    validateIndex(paramInt);
    String str = paramString;
    if (paramString == null) {
      str = nullText;
    }
    if (str != null)
    {
      int i = str.length();
      if (i > 0)
      {
        int j = size + i;
        ensureCapacity(j);
        System.arraycopy(buffer, paramInt, buffer, paramInt + i, size - paramInt);
        size = j;
        str.getChars(0, i, buffer, paramInt);
      }
    }
    return this;
  }
  
  public StrBuilder insert(int paramInt, boolean paramBoolean)
  {
    validateIndex(paramInt);
    if (paramBoolean)
    {
      ensureCapacity(size + 4);
      System.arraycopy(buffer, paramInt, buffer, paramInt + 4, size - paramInt);
      arrayOfChar = buffer;
      i = paramInt + 1;
      arrayOfChar[paramInt] = 't';
      arrayOfChar = buffer;
      paramInt = i + 1;
      arrayOfChar[i] = 'r';
      buffer[paramInt] = 'u';
      buffer[(paramInt + 1)] = 'e';
      size += 4;
      return this;
    }
    ensureCapacity(size + 5);
    System.arraycopy(buffer, paramInt, buffer, paramInt + 5, size - paramInt);
    char[] arrayOfChar = buffer;
    int i = paramInt + 1;
    arrayOfChar[paramInt] = 'f';
    arrayOfChar = buffer;
    paramInt = i + 1;
    arrayOfChar[i] = 'a';
    arrayOfChar = buffer;
    i = paramInt + 1;
    arrayOfChar[paramInt] = 'l';
    buffer[i] = 's';
    buffer[(i + 1)] = 'e';
    size += 5;
    return this;
  }
  
  public StrBuilder insert(int paramInt, char[] paramArrayOfChar)
  {
    validateIndex(paramInt);
    StrBuilder localStrBuilder;
    if (paramArrayOfChar == null) {
      localStrBuilder = insert(paramInt, nullText);
    }
    int i;
    do
    {
      return localStrBuilder;
      i = paramArrayOfChar.length;
      localStrBuilder = this;
    } while (i <= 0);
    ensureCapacity(size + i);
    System.arraycopy(buffer, paramInt, buffer, paramInt + i, size - paramInt);
    System.arraycopy(paramArrayOfChar, 0, buffer, paramInt, i);
    size = (i + size);
    return this;
  }
  
  public StrBuilder insert(int paramInt1, char[] paramArrayOfChar, int paramInt2, int paramInt3)
  {
    validateIndex(paramInt1);
    StrBuilder localStrBuilder;
    if (paramArrayOfChar == null) {
      localStrBuilder = insert(paramInt1, nullText);
    }
    do
    {
      return localStrBuilder;
      if ((paramInt2 < 0) || (paramInt2 > paramArrayOfChar.length)) {
        throw new StringIndexOutOfBoundsException("Invalid offset: " + paramInt2);
      }
      if ((paramInt3 < 0) || (paramInt2 + paramInt3 > paramArrayOfChar.length)) {
        throw new StringIndexOutOfBoundsException("Invalid length: " + paramInt3);
      }
      localStrBuilder = this;
    } while (paramInt3 <= 0);
    ensureCapacity(size + paramInt3);
    System.arraycopy(buffer, paramInt1, buffer, paramInt1 + paramInt3, size - paramInt1);
    System.arraycopy(paramArrayOfChar, paramInt2, buffer, paramInt1, paramInt3);
    size += paramInt3;
    return this;
  }
  
  public boolean isEmpty()
  {
    return size == 0;
  }
  
  public int lastIndexOf(char paramChar)
  {
    return lastIndexOf(paramChar, size - 1);
  }
  
  public int lastIndexOf(char paramChar, int paramInt)
  {
    if (paramInt >= size) {
      paramInt = size - 1;
    }
    int i;
    for (;;)
    {
      i = paramInt;
      if (paramInt >= 0) {
        break;
      }
      return -1;
    }
    do
    {
      i -= 1;
      if (i < 0) {
        break;
      }
    } while (buffer[i] != paramChar);
    return i;
  }
  
  public int lastIndexOf(String paramString)
  {
    return lastIndexOf(paramString, size - 1);
  }
  
  public int lastIndexOf(String paramString, int paramInt)
  {
    int i;
    if (paramInt >= size)
    {
      i = size - 1;
      if ((paramString != null) && (i >= 0)) {
        break label32;
      }
      i = -1;
    }
    label32:
    int k;
    label119:
    do
    {
      return i;
      i = paramInt;
      break;
      k = paramString.length();
      if ((k > 0) && (k <= size))
      {
        if (k == 1) {
          return lastIndexOf(paramString.charAt(0), i);
        }
        paramInt = i - k + 1;
        for (;;)
        {
          if (paramInt < 0) {
            break label131;
          }
          int j = 0;
          for (;;)
          {
            i = paramInt;
            if (j >= k) {
              break;
            }
            if (paramString.charAt(j) != buffer[(paramInt + j)]) {
              break label119;
            }
            j += 1;
          }
          paramInt -= 1;
        }
      }
    } while (k == 0);
    label131:
    return -1;
  }
  
  public int lastIndexOf(StrMatcher paramStrMatcher)
  {
    return lastIndexOf(paramStrMatcher, size);
  }
  
  public int lastIndexOf(StrMatcher paramStrMatcher, int paramInt)
  {
    if (paramInt >= size) {
      paramInt = size - 1;
    }
    while ((paramStrMatcher == null) || (paramInt < 0))
    {
      i = -1;
      return i;
    }
    char[] arrayOfChar = buffer;
    int j;
    for (int i = paramInt;; i = j - 1)
    {
      j = i;
      if (j < 0) {
        break label72;
      }
      i = j;
      if (paramStrMatcher.isMatch(arrayOfChar, j, 0, paramInt + 1) > 0) {
        break;
      }
    }
    label72:
    return -1;
  }
  
  public String leftString(int paramInt)
  {
    if (paramInt <= 0) {
      return "";
    }
    if (paramInt >= size) {
      return new String(buffer, 0, size);
    }
    return new String(buffer, 0, paramInt);
  }
  
  public int length()
  {
    return size;
  }
  
  public String midString(int paramInt1, int paramInt2)
  {
    int i = paramInt1;
    if (paramInt1 < 0) {
      i = 0;
    }
    if ((paramInt2 <= 0) || (i >= size)) {
      return "";
    }
    if (size <= i + paramInt2) {
      return new String(buffer, i, size - i);
    }
    return new String(buffer, i, paramInt2);
  }
  
  public StrBuilder minimizeCapacity()
  {
    if (buffer.length > length())
    {
      char[] arrayOfChar = buffer;
      buffer = new char[length()];
      System.arraycopy(arrayOfChar, 0, buffer, 0, size);
    }
    return this;
  }
  
  public StrBuilder replace(int paramInt1, int paramInt2, String paramString)
  {
    int i = validateRange(paramInt1, paramInt2);
    if (paramString == null) {}
    for (paramInt2 = 0;; paramInt2 = paramString.length())
    {
      replaceImpl(paramInt1, i, i - paramInt1, paramString, paramInt2);
      return this;
    }
  }
  
  public StrBuilder replace(StrMatcher paramStrMatcher, String paramString, int paramInt1, int paramInt2, int paramInt3)
  {
    return replaceImpl(paramStrMatcher, paramString, paramInt1, validateRange(paramInt1, paramInt2), paramInt3);
  }
  
  public StrBuilder replaceAll(char paramChar1, char paramChar2)
  {
    if (paramChar1 != paramChar2)
    {
      int i = 0;
      while (i < size)
      {
        if (buffer[i] == paramChar1) {
          buffer[i] = paramChar2;
        }
        i += 1;
      }
    }
    return this;
  }
  
  public StrBuilder replaceAll(String paramString1, String paramString2)
  {
    int i;
    if (paramString1 == null)
    {
      i = 0;
      if (i <= 0) {
        return this;
      }
      if (paramString2 != null) {
        break label67;
      }
    }
    label67:
    for (int j = 0;; j = paramString2.length())
    {
      for (int k = indexOf(paramString1, 0); k >= 0; k = indexOf(paramString1, k + j)) {
        replaceImpl(k, k + i, i, paramString2, j);
      }
      i = paramString1.length();
      break;
    }
    return this;
  }
  
  public StrBuilder replaceAll(StrMatcher paramStrMatcher, String paramString)
  {
    return replace(paramStrMatcher, paramString, 0, size, -1);
  }
  
  public StrBuilder replaceFirst(char paramChar1, char paramChar2)
  {
    int i;
    if (paramChar1 != paramChar2) {
      i = 0;
    }
    for (;;)
    {
      if (i < size)
      {
        if (buffer[i] == paramChar1) {
          buffer[i] = paramChar2;
        }
      }
      else {
        return this;
      }
      i += 1;
    }
  }
  
  public StrBuilder replaceFirst(String paramString1, String paramString2)
  {
    int j = 0;
    int i;
    int k;
    if (paramString1 == null)
    {
      i = 0;
      if (i > 0)
      {
        k = indexOf(paramString1, 0);
        if (k >= 0) {
          if (paramString2 != null) {
            break label54;
          }
        }
      }
    }
    for (;;)
    {
      replaceImpl(k, k + i, i, paramString2, j);
      return this;
      i = paramString1.length();
      break;
      label54:
      j = paramString2.length();
    }
  }
  
  public StrBuilder replaceFirst(StrMatcher paramStrMatcher, String paramString)
  {
    return replace(paramStrMatcher, paramString, 0, size, 1);
  }
  
  public StrBuilder reverse()
  {
    if (size == 0) {}
    for (;;)
    {
      return this;
      int m = size / 2;
      char[] arrayOfChar = buffer;
      int k = 0;
      int j = size - 1;
      while (k < m)
      {
        int i = arrayOfChar[k];
        arrayOfChar[k] = arrayOfChar[j];
        arrayOfChar[j] = i;
        k += 1;
        j -= 1;
      }
    }
  }
  
  public String rightString(int paramInt)
  {
    if (paramInt <= 0) {
      return "";
    }
    if (paramInt >= size) {
      return new String(buffer, 0, size);
    }
    return new String(buffer, size - paramInt, paramInt);
  }
  
  public StrBuilder setCharAt(int paramInt, char paramChar)
  {
    if ((paramInt < 0) || (paramInt >= length())) {
      throw new StringIndexOutOfBoundsException(paramInt);
    }
    buffer[paramInt] = paramChar;
    return this;
  }
  
  public StrBuilder setLength(int paramInt)
  {
    if (paramInt < 0) {
      throw new StringIndexOutOfBoundsException(paramInt);
    }
    if (paramInt < size) {
      size = paramInt;
    }
    for (;;)
    {
      return this;
      if (paramInt > size)
      {
        ensureCapacity(paramInt);
        int i = size;
        size = paramInt;
        while (i < paramInt)
        {
          buffer[i] = '\000';
          i += 1;
        }
      }
    }
  }
  
  public StrBuilder setNewLineText(String paramString)
  {
    newLine = paramString;
    return this;
  }
  
  public StrBuilder setNullText(String paramString)
  {
    String str = paramString;
    if (paramString != null)
    {
      str = paramString;
      if (paramString.isEmpty()) {
        str = null;
      }
    }
    nullText = str;
    return this;
  }
  
  public int size()
  {
    return size;
  }
  
  public boolean startsWith(String paramString)
  {
    if (paramString == null) {}
    int j;
    do
    {
      return false;
      j = paramString.length();
      if (j == 0) {
        return true;
      }
    } while (j > size);
    int i = 0;
    for (;;)
    {
      if (i >= j) {
        break label53;
      }
      if (buffer[i] != paramString.charAt(i)) {
        break;
      }
      i += 1;
    }
    label53:
    return true;
  }
  
  public CharSequence subSequence(int paramInt1, int paramInt2)
  {
    if (paramInt1 < 0) {
      throw new StringIndexOutOfBoundsException(paramInt1);
    }
    if (paramInt2 > size) {
      throw new StringIndexOutOfBoundsException(paramInt2);
    }
    if (paramInt1 > paramInt2) {
      throw new StringIndexOutOfBoundsException(paramInt2 - paramInt1);
    }
    return substring(paramInt1, paramInt2);
  }
  
  public String substring(int paramInt)
  {
    return substring(paramInt, size);
  }
  
  public String substring(int paramInt1, int paramInt2)
  {
    paramInt2 = validateRange(paramInt1, paramInt2);
    return new String(buffer, paramInt1, paramInt2 - paramInt1);
  }
  
  public char[] toCharArray()
  {
    if (size == 0) {
      return ArrayUtils.EMPTY_CHAR_ARRAY;
    }
    char[] arrayOfChar = new char[size];
    System.arraycopy(buffer, 0, arrayOfChar, 0, size);
    return arrayOfChar;
  }
  
  public char[] toCharArray(int paramInt1, int paramInt2)
  {
    paramInt2 = validateRange(paramInt1, paramInt2) - paramInt1;
    if (paramInt2 == 0) {
      return ArrayUtils.EMPTY_CHAR_ARRAY;
    }
    char[] arrayOfChar = new char[paramInt2];
    System.arraycopy(buffer, paramInt1, arrayOfChar, 0, paramInt2);
    return arrayOfChar;
  }
  
  public String toString()
  {
    return new String(buffer, 0, size);
  }
  
  public StringBuffer toStringBuffer()
  {
    return new StringBuffer(size).append(buffer, 0, size);
  }
  
  public StringBuilder toStringBuilder()
  {
    return new StringBuilder(size).append(buffer, 0, size);
  }
  
  public StrBuilder trim()
  {
    if (size == 0) {}
    int i;
    do
    {
      return this;
      int k = size;
      char[] arrayOfChar = buffer;
      i = 0;
      int j;
      for (;;)
      {
        j = k;
        if (i >= k) {
          break;
        }
        j = k;
        if (arrayOfChar[i] > ' ') {
          break;
        }
        i += 1;
      }
      while ((i < j) && (arrayOfChar[(j - 1)] <= ' ')) {
        j -= 1;
      }
      if (j < size) {
        delete(j, size);
      }
    } while (i <= 0);
    delete(0, i);
    return this;
  }
  
  protected void validateIndex(int paramInt)
  {
    if ((paramInt < 0) || (paramInt > size)) {
      throw new StringIndexOutOfBoundsException(paramInt);
    }
  }
  
  protected int validateRange(int paramInt1, int paramInt2)
  {
    if (paramInt1 < 0) {
      throw new StringIndexOutOfBoundsException(paramInt1);
    }
    int i = paramInt2;
    if (paramInt2 > size) {
      i = size;
    }
    if (paramInt1 > i) {
      throw new StringIndexOutOfBoundsException("end < start");
    }
    return i;
  }
  
  class StrBuilderReader
    extends Reader
  {
    private int mark;
    private int pos;
    
    StrBuilderReader() {}
    
    public void close() {}
    
    public void mark(int paramInt)
    {
      mark = pos;
    }
    
    public boolean markSupported()
    {
      return true;
    }
    
    public int read()
    {
      if (!ready()) {
        return -1;
      }
      StrBuilder localStrBuilder = StrBuilder.this;
      int i = pos;
      pos = (i + 1);
      return localStrBuilder.charAt(i);
    }
    
    public int read(char[] paramArrayOfChar, int paramInt1, int paramInt2)
    {
      if ((paramInt1 < 0) || (paramInt2 < 0) || (paramInt1 > paramArrayOfChar.length) || (paramInt1 + paramInt2 > paramArrayOfChar.length) || (paramInt1 + paramInt2 < 0)) {
        throw new IndexOutOfBoundsException();
      }
      if (paramInt2 == 0) {
        return 0;
      }
      if (pos >= size()) {
        return -1;
      }
      int i = paramInt2;
      if (pos + paramInt2 > size()) {
        i = size() - pos;
      }
      getChars(pos, pos + i, paramArrayOfChar, paramInt1);
      pos += i;
      return i;
    }
    
    public boolean ready()
    {
      return pos < size();
    }
    
    public void reset()
    {
      pos = mark;
    }
    
    public long skip(long paramLong)
    {
      if (pos + paramLong > size()) {
        paramLong = size() - pos;
      }
      for (;;)
      {
        if (paramLong < 0L) {
          return 0L;
        }
        pos = ((int)(pos + paramLong));
        return paramLong;
      }
    }
  }
  
  class StrBuilderTokenizer
    extends StrTokenizer
  {
    StrBuilderTokenizer() {}
    
    public String getContent()
    {
      String str2 = super.getContent();
      String str1 = str2;
      if (str2 == null) {
        str1 = toString();
      }
      return str1;
    }
    
    protected List<String> tokenize(char[] paramArrayOfChar, int paramInt1, int paramInt2)
    {
      if (paramArrayOfChar == null) {
        return super.tokenize(buffer, 0, size());
      }
      return super.tokenize(paramArrayOfChar, paramInt1, paramInt2);
    }
  }
  
  class StrBuilderWriter
    extends Writer
  {
    StrBuilderWriter() {}
    
    public void close() {}
    
    public void flush() {}
    
    public void write(int paramInt)
    {
      append((char)paramInt);
    }
    
    public void write(String paramString)
    {
      append(paramString);
    }
    
    public void write(String paramString, int paramInt1, int paramInt2)
    {
      append(paramString, paramInt1, paramInt2);
    }
    
    public void write(char[] paramArrayOfChar)
    {
      append(paramArrayOfChar);
    }
    
    public void write(char[] paramArrayOfChar, int paramInt1, int paramInt2)
    {
      append(paramArrayOfChar, paramInt1, paramInt2);
    }
  }
}

/* Location:
 * Qualified Name:     org.apache.commons.lang3.text.StrBuilder
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */