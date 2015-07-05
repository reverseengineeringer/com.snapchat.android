package com.brightcove.player.captioning;

import android.util.Xml;
import com.brightcove.player.model.Block;
import com.brightcove.player.model.Element;
import com.brightcove.player.model.Length;
import com.brightcove.player.model.Region;
import com.brightcove.player.model.Region.DisplayAlign;
import com.brightcove.player.model.Span;
import com.brightcove.player.model.StyledElement;
import com.brightcove.player.model.StyledElement.FontStyle;
import com.brightcove.player.model.StyledElement.FontWeight;
import com.brightcove.player.model.StyledElement.TextAlign;
import com.brightcove.player.model.StyledElement.TextDecoration;
import com.brightcove.player.model.TTMLDocument;
import com.brightcove.player.util.StringUtil;
import java.io.InputStream;
import java.io.Reader;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserFactory;

public class TTMLParser
{
  private static final int HOURS = 3600000;
  private static final int MINUTES = 60000;
  private static final int SECONDS = 1000;
  private static final String TAG = TTMLParser.class.getSimpleName();
  private static final Pattern timeFormatPattern = Pattern.compile("^(\\d{2}):(\\d{2}):(\\d{2}).(\\d{3})$");
  
  private static int calculateDuration(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    return 3600000 * paramInt1 + 60000 * paramInt2 + paramInt3 * 1000 + paramInt4;
  }
  
  private static String getText(StringBuilder paramStringBuilder)
  {
    return paramStringBuilder.toString();
  }
  
  private static void parseBlockAttributes(Block paramBlock, XmlPullParser paramXmlPullParser)
  {
    if (paramBlock == null) {}
    do
    {
      return;
      String str1 = paramXmlPullParser.getAttributeValue(Namespaces.DEFAULT, "begin");
      String str2 = paramXmlPullParser.getAttributeValue(Namespaces.DEFAULT, "end");
      int i = parseTimeValue(str1);
      int j = parseTimeValue(str2);
      paramXmlPullParser = paramXmlPullParser.getAttributeValue(Namespaces.DEFAULT, "region");
      paramBlock.setBeginTime(i);
      paramBlock.setEndTime(j);
    } while (StringUtil.isEmpty(paramXmlPullParser));
    paramBlock.setRegion(paramXmlPullParser);
  }
  
  private static BrightcoveClosedCaption parseCaption(XmlPullParser paramXmlPullParser)
  {
    paramXmlPullParser.require(2, Namespaces.DEFAULT, "p");
    BrightcoveClosedCaption localBrightcoveClosedCaption = new BrightcoveClosedCaption();
    parseStyledElementAttributes(localBrightcoveClosedCaption, paramXmlPullParser);
    parseBlockAttributes(localBrightcoveClosedCaption, paramXmlPullParser);
    ArrayList localArrayList2 = new ArrayList();
    ArrayList localArrayList1 = new ArrayList();
    Object localObject1 = new Span();
    StringBuilder localStringBuilder = new StringBuilder();
    while ((paramXmlPullParser.next() != 3) || (!paramXmlPullParser.getName().equals("p")))
    {
      int i = paramXmlPullParser.getEventType();
      Object localObject2;
      if (i == 4)
      {
        String str = paramXmlPullParser.getText();
        if (!StringUtil.isEmpty(str))
        {
          localObject2 = localObject1;
          if (localObject1 == null) {
            localObject2 = new Span();
          }
          localStringBuilder.append(str);
          localObject1 = localObject2;
        }
      }
      else if (i == 2)
      {
        localObject2 = paramXmlPullParser.getName();
        if (((String)localObject2).equals("span"))
        {
          if (localObject1 != null)
          {
            ((Span)localObject1).setText(getText(localStringBuilder));
            localArrayList1.add(localObject1);
            localStringBuilder.delete(0, localStringBuilder.length());
          }
          localObject1 = new Span();
          parseStyledElementAttributes((StyledElement)localObject1, paramXmlPullParser);
        }
        else if (((String)localObject2).equals("br"))
        {
          localObject2 = localObject1;
          if (localStringBuilder.length() > 0)
          {
            localObject2 = localObject1;
            if (localObject1 == null) {
              localObject2 = new Span();
            }
            ((Span)localObject2).setText(getText(localStringBuilder));
            localArrayList1.add(localObject2);
            localStringBuilder.delete(0, localStringBuilder.length());
            localObject2 = new Span((StyledElement)localObject2);
          }
          localArrayList2.add(localArrayList1);
          localArrayList1 = new ArrayList();
          localObject1 = localObject2;
        }
      }
      else if ((i == 3) && (paramXmlPullParser.getName().equals("span")))
      {
        ((Span)localObject1).setText(getText(localStringBuilder));
        localArrayList1.add(localObject1);
        localObject1 = null;
        localStringBuilder.delete(0, localStringBuilder.length());
      }
    }
    if (localStringBuilder.length() > 0)
    {
      paramXmlPullParser = (XmlPullParser)localObject1;
      if (localObject1 == null) {
        paramXmlPullParser = new Span();
      }
      paramXmlPullParser.setText(getText(localStringBuilder));
      localArrayList1.add(paramXmlPullParser);
      localArrayList2.add(localArrayList1);
    }
    for (;;)
    {
      localBrightcoveClosedCaption.setLines(localArrayList2);
      return localBrightcoveClosedCaption;
      localArrayList2.add(localArrayList1);
    }
  }
  
  private static void parseID(Element paramElement, XmlPullParser paramXmlPullParser)
  {
    if (paramElement == null) {}
    do
    {
      return;
      paramXmlPullParser = paramXmlPullParser.getAttributeValue("http://www.w3.org/XML/1998/namespace", "id");
    } while (StringUtil.isEmpty(paramXmlPullParser));
    paramElement.setID(paramXmlPullParser);
  }
  
  private static Map<String, Region> parseLayout(XmlPullParser paramXmlPullParser)
  {
    paramXmlPullParser.require(2, Namespaces.DEFAULT, "layout");
    HashMap localHashMap = new HashMap();
    while ((paramXmlPullParser.next() != 3) || (!paramXmlPullParser.getName().equals("layout"))) {
      if ((paramXmlPullParser.getEventType() == 2) && (paramXmlPullParser.getName().equals("region")))
      {
        Region localRegion = parseRegion(paramXmlPullParser);
        localHashMap.put(localRegion.getID(), localRegion);
      }
    }
    paramXmlPullParser.require(3, Namespaces.DEFAULT, "layout");
    return localHashMap;
  }
  
  private static void parsePositionalAttributes(Region paramRegion, XmlPullParser paramXmlPullParser)
  {
    if (paramRegion == null) {}
    do
    {
      return;
      Object localObject2 = paramXmlPullParser.getAttributeValue("http://www.w3.org/ns/ttml#styling", "origin");
      Object localObject1 = paramXmlPullParser.getAttributeValue("http://www.w3.org/ns/ttml#styling", "extent");
      paramXmlPullParser = paramXmlPullParser.getAttributeValue("http://www.w3.org/ns/ttml#styling", "displayAlign");
      if (!StringUtil.isEmpty((String)localObject2))
      {
        localObject2 = ((String)localObject2).split(" ");
        paramRegion.setOriginX(new Length(localObject2[0]));
        paramRegion.setOriginY(new Length(localObject2[1]));
      }
      if (!StringUtil.isEmpty((String)localObject1))
      {
        localObject1 = ((String)localObject1).split(" ");
        paramRegion.setExtentX(new Length(localObject1[0]));
        paramRegion.setExtentY(new Length(localObject1[1]));
      }
    } while (StringUtil.isEmpty(paramXmlPullParser));
    paramRegion.setDisplayAlign(Region.DisplayAlign.fromString(paramXmlPullParser));
  }
  
  private static Region parseRegion(XmlPullParser paramXmlPullParser)
  {
    paramXmlPullParser.require(2, Namespaces.DEFAULT, "region");
    Region localRegion = new Region();
    parseID(localRegion, paramXmlPullParser);
    parseStyledElementAttributes(localRegion, paramXmlPullParser);
    if ((paramXmlPullParser.nextTag() == 2) && (paramXmlPullParser.getName().equals("style")))
    {
      parseStyledElementAttributes(localRegion, paramXmlPullParser);
      parsePositionalAttributes(localRegion, paramXmlPullParser);
    }
    return localRegion;
  }
  
  private static TTMLDocument parseRoot(XmlPullParser paramXmlPullParser)
  {
    Object localObject = new HashMap();
    ArrayList localArrayList = new ArrayList();
    paramXmlPullParser.require(2, Namespaces.DEFAULT, "tt");
    Map localMap = null;
    Block localBlock = null;
    while (paramXmlPullParser.next() != 1) {
      if (paramXmlPullParser.getEventType() == 2)
      {
        String str = paramXmlPullParser.getName();
        if (str.equals("styling"))
        {
          localMap = parseStyling(paramXmlPullParser);
        }
        else if (str.equals("layout"))
        {
          localObject = parseLayout(paramXmlPullParser);
        }
        else if (str.equals("body"))
        {
          localBlock = new Block();
          parseStyledElementAttributes(localBlock, paramXmlPullParser);
          parseBlockAttributes(localBlock, paramXmlPullParser);
        }
        else if (str.equals("p"))
        {
          localArrayList.add(parseCaption(paramXmlPullParser));
        }
      }
    }
    paramXmlPullParser.require(1, Namespaces.DEFAULT, null);
    return new TTMLDocument((Map)localObject, localMap, localBlock, localArrayList);
  }
  
  private static StyledElement parseStyle(XmlPullParser paramXmlPullParser)
  {
    paramXmlPullParser.require(2, Namespaces.DEFAULT, "style");
    StyledElement localStyledElement = new StyledElement();
    parseID(localStyledElement, paramXmlPullParser);
    parseStyledElementAttributes(localStyledElement, paramXmlPullParser);
    return localStyledElement;
  }
  
  private static void parseStyledElementAttributes(StyledElement paramStyledElement, XmlPullParser paramXmlPullParser)
  {
    if (paramStyledElement == null) {}
    do
    {
      return;
      String str = paramXmlPullParser.getAttributeValue(Namespaces.DEFAULT, "style");
      if (!StringUtil.isEmpty(str)) {
        paramStyledElement.setStyleName(str);
      }
      str = paramXmlPullParser.getAttributeValue("http://www.w3.org/ns/ttml#styling", "color");
      if (!StringUtil.isEmpty(str)) {
        paramStyledElement.setColor(str);
      }
      str = paramXmlPullParser.getAttributeValue("http://www.w3.org/ns/ttml#styling", "backgroundColor");
      if (!StringUtil.isEmpty(str)) {
        paramStyledElement.setBackgroundColor(str);
      }
      str = paramXmlPullParser.getAttributeValue("http://www.w3.org/ns/ttml#styling", "fontStyle");
      if (!StringUtil.isEmpty(str)) {
        paramStyledElement.setFontStyle(StyledElement.FontStyle.valueOf(str.toUpperCase()));
      }
      str = paramXmlPullParser.getAttributeValue("http://www.w3.org/ns/ttml#styling", "textAlign");
      if (!StringUtil.isEmpty(str)) {
        paramStyledElement.setTextAlign(StyledElement.TextAlign.valueOf(str.toUpperCase()));
      }
      str = paramXmlPullParser.getAttributeValue("http://www.w3.org/ns/ttml#styling", "fontWeight");
      if (!StringUtil.isEmpty(str)) {
        paramStyledElement.setFontWeight(StyledElement.FontWeight.valueOf(str.toUpperCase()));
      }
      str = paramXmlPullParser.getAttributeValue("http://www.w3.org/ns/ttml#styling", "textDecoration");
      if (!StringUtil.isEmpty(str)) {
        paramStyledElement.setTextDecoration(StyledElement.TextDecoration.valueOf(str.toUpperCase()));
      }
      paramXmlPullParser = paramXmlPullParser.getAttributeValue("http://www.w3.org/ns/ttml#styling", "fontSize");
    } while (StringUtil.isEmpty(paramXmlPullParser));
    paramStyledElement.setFontSize(new Length(paramXmlPullParser));
  }
  
  private static Map<String, StyledElement> parseStyling(XmlPullParser paramXmlPullParser)
  {
    paramXmlPullParser.require(2, Namespaces.DEFAULT, "styling");
    HashMap localHashMap = new HashMap();
    while ((paramXmlPullParser.next() != 3) || (!paramXmlPullParser.getName().equals("styling"))) {
      if ((paramXmlPullParser.getEventType() == 2) && (paramXmlPullParser.getName().equals("style")))
      {
        StyledElement localStyledElement = parseStyle(paramXmlPullParser);
        localHashMap.put(localStyledElement.getID(), localStyledElement);
      }
    }
    paramXmlPullParser.require(3, Namespaces.DEFAULT, "styling");
    return localHashMap;
  }
  
  public static int parseTimeValue(String paramString)
  {
    if (!StringUtil.isEmpty(paramString)) {
      try
      {
        Object localObject = timeFormatPattern.matcher(paramString);
        if ((((Matcher)localObject).find()) && (((Matcher)localObject).groupCount() >= 4))
        {
          paramString = ((Matcher)localObject).group(1);
          String str1 = ((Matcher)localObject).group(2);
          String str2 = ((Matcher)localObject).group(3);
          localObject = ((Matcher)localObject).group(4);
          if ((!StringUtil.isEmpty(paramString)) && (!StringUtil.isEmpty(str1)) && (!StringUtil.isEmpty(str2)) && (!StringUtil.isEmpty((String)localObject)))
          {
            int i = calculateDuration(Integer.parseInt(paramString), Integer.parseInt(str1), Integer.parseInt(str2), Integer.parseInt((String)localObject));
            return i;
          }
        }
      }
      catch (NumberFormatException paramString) {}
    }
    return -1;
  }
  
  public static TTMLDocument parseXml(InputStream paramInputStream, String paramString)
  {
    try
    {
      XmlPullParser localXmlPullParser = XmlPullParserFactory.newInstance().newPullParser();
      localXmlPullParser.setFeature("http://xmlpull.org/v1/doc/features.html#process-namespaces", true);
      localXmlPullParser.setInput(paramInputStream, paramString);
      localXmlPullParser.nextTag();
      paramString = parseRoot(localXmlPullParser);
      return paramString;
    }
    finally
    {
      if (paramInputStream != null) {
        paramInputStream.close();
      }
    }
  }
  
  public static TTMLDocument parseXml(Reader paramReader)
  {
    try
    {
      Object localObject1 = Xml.newPullParser();
      ((XmlPullParser)localObject1).setFeature("http://xmlpull.org/v1/doc/features.html#process-namespaces", true);
      ((XmlPullParser)localObject1).setInput(paramReader);
      ((XmlPullParser)localObject1).nextTag();
      new StringBuilder("detected XML encoding for TTML is: ").append(((XmlPullParser)localObject1).getInputEncoding());
      localObject1 = parseRoot((XmlPullParser)localObject1);
      return (TTMLDocument)localObject1;
    }
    finally
    {
      if (paramReader != null) {
        paramReader.close();
      }
    }
  }
  
  public static class Attributes
  {
    public static final String BEGIN = "begin";
    public static final String BG_COLOR = "backgroundColor";
    public static final String COLOR = "color";
    public static final String DISPLAY_ALIGN = "displayAlign";
    public static final String END = "end";
    public static final String EXTENT = "extent";
    public static final String FONT_SIZE = "fontSize";
    public static final String FONT_STYLE = "fontStyle";
    public static final String FONT_WEIGHT = "fontWeight";
    public static final String ID = "id";
    public static final String ORIGIN = "origin";
    public static final String REGION = "region";
    public static final String STYLE = "style";
    public static final String TEXT_ALIGN = "textAlign";
    public static final String TEXT_DECORATION = "textDecoration";
  }
  
  public static class Namespaces
  {
    public static final String DEFAULT = null;
    public static final String TTM = "http://www.w3.org/ns/ttml#metadata";
    public static final String TTS = "http://www.w3.org/ns/ttml#styling";
    public static final String XML = "http://www.w3.org/XML/1998/namespace";
  }
  
  public static class Tags
  {
    public static final String BODY = "body";
    public static final String BR = "br";
    public static final String CAPTION = "p";
    public static final String HEAD = "head";
    public static final String LAYOUT = "layout";
    public static final String REGION = "region";
    public static final String ROOT = "tt";
    public static final String SPAN = "span";
    public static final String STYLE = "style";
    public static final String STYLING = "styling";
  }
}

/* Location:
 * Qualified Name:     com.brightcove.player.captioning.TTMLParser
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */