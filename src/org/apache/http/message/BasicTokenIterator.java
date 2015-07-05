package org.apache.http.message;

import java.util.NoSuchElementException;
import org.apache.http.Header;
import org.apache.http.HeaderIterator;
import org.apache.http.ParseException;
import org.apache.http.TokenIterator;
import org.apache.http.annotation.NotThreadSafe;
import org.apache.http.util.Args;

@NotThreadSafe
public class BasicTokenIterator
  implements TokenIterator
{
  public static final String HTTP_SEPARATORS = " ,;=()<>@:\\\"/[]?{}\t";
  protected String currentHeader;
  protected String currentToken;
  protected final HeaderIterator headerIt;
  protected int searchPos;
  
  public BasicTokenIterator(HeaderIterator paramHeaderIterator)
  {
    headerIt = ((HeaderIterator)Args.notNull(paramHeaderIterator, "Header iterator"));
    searchPos = findNext(-1);
  }
  
  protected String createToken(String paramString, int paramInt1, int paramInt2)
  {
    return paramString.substring(paramInt1, paramInt2);
  }
  
  protected int findNext(int paramInt)
  {
    if (paramInt < 0)
    {
      if (!headerIt.hasNext()) {
        return -1;
      }
      currentHeader = headerIt.nextHeader().getValue();
    }
    for (paramInt = 0;; paramInt = findTokenSeparator(paramInt))
    {
      paramInt = findTokenStart(paramInt);
      if (paramInt >= 0) {
        break;
      }
      currentToken = null;
      return -1;
    }
    int i = findTokenEnd(paramInt);
    currentToken = createToken(currentHeader, paramInt, i);
    return i;
  }
  
  protected int findTokenEnd(int paramInt)
  {
    Args.notNegative(paramInt, "Search position");
    int i = currentHeader.length();
    paramInt += 1;
    while ((paramInt < i) && (isTokenChar(currentHeader.charAt(paramInt)))) {
      paramInt += 1;
    }
    return paramInt;
  }
  
  protected int findTokenSeparator(int paramInt)
  {
    paramInt = Args.notNegative(paramInt, "Search position");
    int i = 0;
    int j = currentHeader.length();
    while ((i == 0) && (paramInt < j))
    {
      char c = currentHeader.charAt(paramInt);
      if (isTokenSeparator(c))
      {
        i = 1;
      }
      else if (isWhitespace(c))
      {
        paramInt += 1;
      }
      else
      {
        if (isTokenChar(c)) {
          throw new ParseException("Tokens without separator (pos " + paramInt + "): " + currentHeader);
        }
        throw new ParseException("Invalid character after token (pos " + paramInt + "): " + currentHeader);
      }
    }
    return paramInt;
  }
  
  protected int findTokenStart(int paramInt)
  {
    paramInt = Args.notNegative(paramInt, "Search position");
    int i = 0;
    while ((i == 0) && (currentHeader != null))
    {
      int k = currentHeader.length();
      int j = i;
      i = paramInt;
      paramInt = j;
      while ((paramInt == 0) && (i < k))
      {
        char c = currentHeader.charAt(i);
        if ((isTokenSeparator(c)) || (isWhitespace(c))) {
          i += 1;
        } else if (isTokenChar(currentHeader.charAt(i))) {
          paramInt = 1;
        } else {
          throw new ParseException("Invalid character before token (pos " + i + "): " + currentHeader);
        }
      }
      if (paramInt == 0)
      {
        if (headerIt.hasNext())
        {
          currentHeader = headerIt.nextHeader().getValue();
          i = paramInt;
          paramInt = 0;
        }
        else
        {
          currentHeader = null;
        }
      }
      else
      {
        j = paramInt;
        paramInt = i;
        i = j;
      }
    }
    if (i != 0) {
      return paramInt;
    }
    return -1;
  }
  
  public boolean hasNext()
  {
    return currentToken != null;
  }
  
  protected boolean isHttpSeparator(char paramChar)
  {
    return " ,;=()<>@:\\\"/[]?{}\t".indexOf(paramChar) >= 0;
  }
  
  protected boolean isTokenChar(char paramChar)
  {
    if (Character.isLetterOrDigit(paramChar)) {}
    do
    {
      return true;
      if (Character.isISOControl(paramChar)) {
        return false;
      }
    } while (!isHttpSeparator(paramChar));
    return false;
  }
  
  protected boolean isTokenSeparator(char paramChar)
  {
    return paramChar == ',';
  }
  
  protected boolean isWhitespace(char paramChar)
  {
    return (paramChar == '\t') || (Character.isSpaceChar(paramChar));
  }
  
  public final Object next()
  {
    return nextToken();
  }
  
  public String nextToken()
  {
    if (currentToken == null) {
      throw new NoSuchElementException("Iteration already finished.");
    }
    String str = currentToken;
    searchPos = findNext(searchPos);
    return str;
  }
  
  public final void remove()
  {
    throw new UnsupportedOperationException("Removing tokens is not supported.");
  }
}

/* Location:
 * Qualified Name:     org.apache.http.message.BasicTokenIterator
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */