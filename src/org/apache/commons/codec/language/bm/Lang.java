package org.apache.commons.codec.language.bm;

import java.io.PrintStream;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.EnumMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Scanner;
import java.util.Set;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class Lang
{
  private static final String LANGUAGE_RULES_RN = "org/apache/commons/codec/language/bm/lang.txt";
  private static final Map<NameType, Lang> Langs = new EnumMap(NameType.class);
  private final Languages languages;
  private final List<LangRule> rules;
  
  static
  {
    NameType[] arrayOfNameType = NameType.values();
    int j = arrayOfNameType.length;
    int i = 0;
    while (i < j)
    {
      NameType localNameType = arrayOfNameType[i];
      Langs.put(localNameType, loadFromResource("org/apache/commons/codec/language/bm/lang.txt", Languages.getInstance(localNameType)));
      i += 1;
    }
  }
  
  private Lang(List<LangRule> paramList, Languages paramLanguages)
  {
    rules = Collections.unmodifiableList(paramList);
    languages = paramLanguages;
  }
  
  public static Lang instance(NameType paramNameType)
  {
    return (Lang)Langs.get(paramNameType);
  }
  
  public static Lang loadFromResource(String paramString, Languages paramLanguages)
  {
    ArrayList localArrayList = new ArrayList();
    paramString = Lang.class.getClassLoader().getResourceAsStream(paramString);
    if (paramString == null) {
      throw new IllegalStateException("Unable to resolve required resource:org/apache/commons/codec/language/bm/lang.txt");
    }
    Scanner localScanner = new Scanner(paramString, "UTF-8");
    int i = 0;
    Object localObject;
    int j;
    while (localScanner.hasNextLine())
    {
      localObject = localScanner.nextLine();
      if (i != 0)
      {
        if (((String)localObject).endsWith("*/")) {
          i = 0;
        }
      }
      else if (((String)localObject).startsWith("/*"))
      {
        i = 1;
      }
      else
      {
        j = ((String)localObject).indexOf("//");
        if (j < 0) {
          break label246;
        }
      }
    }
    label246:
    for (paramString = ((String)localObject).substring(0, j);; paramString = (String)localObject)
    {
      paramString = paramString.trim();
      if (paramString.length() == 0) {
        break;
      }
      paramString = paramString.split("\\s+");
      if (paramString.length != 3)
      {
        System.err.println("Warning: malformed line '" + (String)localObject + "'");
        break;
      }
      localObject = Pattern.compile(paramString[0]);
      String[] arrayOfString = paramString[1].split("\\+");
      boolean bool = paramString[2].equals("true");
      localArrayList.add(new LangRule((Pattern)localObject, new HashSet(Arrays.asList(arrayOfString)), bool, null));
      break;
      return new Lang(localArrayList, paramLanguages);
    }
  }
  
  public String guessLanguage(String paramString)
  {
    paramString = guessLanguages(paramString);
    if (paramString.isSingleton()) {
      return paramString.getAny();
    }
    return "any";
  }
  
  public Languages.LanguageSet guessLanguages(String paramString)
  {
    paramString = paramString.toLowerCase(Locale.ENGLISH);
    Object localObject = new HashSet(languages.getLanguages());
    Iterator localIterator = rules.iterator();
    while (localIterator.hasNext())
    {
      LangRule localLangRule = (LangRule)localIterator.next();
      if (localLangRule.matches(paramString)) {
        if (acceptOnMatch) {
          ((Set)localObject).retainAll(languages);
        } else {
          ((Set)localObject).removeAll(languages);
        }
      }
    }
    localObject = Languages.LanguageSet.from((Set)localObject);
    paramString = (String)localObject;
    if (localObject.equals(Languages.NO_LANGUAGES)) {
      paramString = Languages.ANY_LANGUAGE;
    }
    return paramString;
  }
  
  static final class LangRule
  {
    private final boolean acceptOnMatch;
    private final Set<String> languages;
    private final Pattern pattern;
    
    private LangRule(Pattern paramPattern, Set<String> paramSet, boolean paramBoolean)
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
}

/* Location:
 * Qualified Name:     org.apache.commons.codec.language.bm.Lang
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */