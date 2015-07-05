package org.apache.commons.codec.language.bm;

import java.util.Set;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

final class Lang$LangRule
{
  private final boolean acceptOnMatch;
  private final Set<String> languages;
  private final Pattern pattern;
  
  private Lang$LangRule(Pattern paramPattern, Set<String> paramSet, boolean paramBoolean)
  {
    pattern = paramPattern;
    languages = paramSet;
    acceptOnMatch = paramBoolean;
  }
  
  public final boolean matches(String paramString)
  {
    return pattern.matcher(paramString).find();
  }
}

/* Location:
 * Qualified Name:     org.apache.commons.codec.language.bm.Lang.LangRule
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */