final class ch$1
  extends ch
{
  public final boolean a(char paramChar)
  {
    switch (paramChar)
    {
    default: 
      if ((paramChar < ' ') || (paramChar > ' ')) {
        break;
      }
    case '\t': 
    case '\n': 
    case '\013': 
    case '\f': 
    case '\r': 
    case ' ': 
    case '': 
    case ' ': 
    case ' ': 
    case ' ': 
    case ' ': 
    case '　': 
      return true;
    case ' ': 
      return false;
    }
    return false;
  }
  
  public final String toString()
  {
    return "CharMatcher.BREAKING_WHITESPACE";
  }
}

/* Location:
 * Qualified Name:     ch.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */