.class public Lcom/brightcove/player/captioning/TTMLParser;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/brightcove/player/captioning/TTMLParser$Attributes;,
        Lcom/brightcove/player/captioning/TTMLParser$Tags;,
        Lcom/brightcove/player/captioning/TTMLParser$Namespaces;
    }
.end annotation


# static fields
.field private static final HOURS:I = 0x36ee80

.field private static final MINUTES:I = 0xea60

.field private static final SECONDS:I = 0x3e8

.field private static final TAG:Ljava/lang/String;

.field private static final timeFormatPattern:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 54
    const-class v0, Lcom/brightcove/player/captioning/TTMLParser;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/brightcove/player/captioning/TTMLParser;->TAG:Ljava/lang/String;

    .line 107
    const-string v0, "^(\\d{2}):(\\d{2}):(\\d{2}).(\\d{3})$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/brightcove/player/captioning/TTMLParser;->timeFormatPattern:Ljava/util/regex/Pattern;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static calculateDuration(IIII)I
    .locals 2

    .prologue
    .line 523
    const v0, 0x36ee80

    mul-int/2addr v0, p0

    const v1, 0xea60

    mul-int/2addr v1, p1

    add-int/2addr v0, v1

    mul-int/lit16 v1, p2, 0x3e8

    add-int/2addr v0, v1

    add-int/2addr v0, p3

    return v0
.end method

.method private static getText(Ljava/lang/StringBuilder;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 394
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static parseBlockAttributes(Lcom/brightcove/player/model/Block;Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 4

    .prologue
    .line 429
    if-nez p0, :cond_1

    .line 446
    :cond_0
    :goto_0
    return-void

    .line 433
    :cond_1
    sget-object v0, Lcom/brightcove/player/captioning/TTMLParser$Namespaces;->DEFAULT:Ljava/lang/String;

    const-string v1, "begin"

    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 434
    sget-object v1, Lcom/brightcove/player/captioning/TTMLParser$Namespaces;->DEFAULT:Ljava/lang/String;

    const-string v2, "end"

    invoke-interface {p1, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 436
    invoke-static {v0}, Lcom/brightcove/player/captioning/TTMLParser;->parseTimeValue(Ljava/lang/String;)I

    move-result v0

    .line 437
    invoke-static {v1}, Lcom/brightcove/player/captioning/TTMLParser;->parseTimeValue(Ljava/lang/String;)I

    move-result v1

    .line 438
    sget-object v2, Lcom/brightcove/player/captioning/TTMLParser$Namespaces;->DEFAULT:Ljava/lang/String;

    const-string v3, "region"

    invoke-interface {p1, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 440
    invoke-virtual {p0, v0}, Lcom/brightcove/player/model/Block;->setBeginTime(I)V

    .line 441
    invoke-virtual {p0, v1}, Lcom/brightcove/player/model/Block;->setEndTime(I)V

    .line 443
    invoke-static {v2}, Lcom/brightcove/player/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 444
    invoke-virtual {p0, v2}, Lcom/brightcove/player/model/Block;->setRegion(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static parseCaption(Lorg/xmlpull/v1/XmlPullParser;)Lcom/brightcove/player/captioning/BrightcoveClosedCaption;
    .locals 10

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x0

    .line 303
    sget-object v0, Lcom/brightcove/player/captioning/TTMLParser$Namespaces;->DEFAULT:Ljava/lang/String;

    const-string v1, "p"

    invoke-interface {p0, v8, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 305
    new-instance v3, Lcom/brightcove/player/captioning/BrightcoveClosedCaption;

    invoke-direct {v3}, Lcom/brightcove/player/captioning/BrightcoveClosedCaption;-><init>()V

    .line 307
    invoke-static {v3, p0}, Lcom/brightcove/player/captioning/TTMLParser;->parseStyledElementAttributes(Lcom/brightcove/player/model/StyledElement;Lorg/xmlpull/v1/XmlPullParser;)V

    .line 308
    invoke-static {v3, p0}, Lcom/brightcove/player/captioning/TTMLParser;->parseBlockAttributes(Lcom/brightcove/player/model/Block;Lorg/xmlpull/v1/XmlPullParser;)V

    .line 311
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 312
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 313
    new-instance v0, Lcom/brightcove/player/model/Span;

    invoke-direct {v0}, Lcom/brightcove/player/model/Span;-><init>()V

    .line 314
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 318
    :cond_0
    :goto_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    if-ne v2, v9, :cond_1

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v6, "p"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 319
    :cond_1
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v2

    .line 321
    const/4 v6, 0x4

    if-ne v2, v6, :cond_3

    .line 322
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v2

    .line 323
    invoke-static {v2}, Lcom/brightcove/player/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 324
    if-nez v0, :cond_2

    .line 325
    new-instance v0, Lcom/brightcove/player/model/Span;

    invoke-direct {v0}, Lcom/brightcove/player/model/Span;-><init>()V

    .line 327
    :cond_2
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 329
    :cond_3
    if-ne v2, v8, :cond_8

    .line 330
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 333
    const-string v6, "span"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 334
    if-eqz v0, :cond_4

    .line 335
    invoke-static {v5}, Lcom/brightcove/player/captioning/TTMLParser;->getText(Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/brightcove/player/model/Span;->setText(Ljava/lang/String;)V

    .line 336
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 338
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    invoke-virtual {v5, v7, v0}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 340
    :cond_4
    new-instance v0, Lcom/brightcove/player/model/Span;

    invoke-direct {v0}, Lcom/brightcove/player/model/Span;-><init>()V

    .line 341
    invoke-static {v0, p0}, Lcom/brightcove/player/captioning/TTMLParser;->parseStyledElementAttributes(Lcom/brightcove/player/model/StyledElement;Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    .line 342
    :cond_5
    const-string v6, "br"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 344
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_7

    .line 345
    if-nez v0, :cond_6

    .line 346
    new-instance v0, Lcom/brightcove/player/model/Span;

    invoke-direct {v0}, Lcom/brightcove/player/model/Span;-><init>()V

    .line 349
    :cond_6
    invoke-static {v5}, Lcom/brightcove/player/captioning/TTMLParser;->getText(Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/brightcove/player/model/Span;->setText(Ljava/lang/String;)V

    .line 350
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 352
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    invoke-virtual {v5, v7, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 355
    new-instance v2, Lcom/brightcove/player/model/Span;

    invoke-direct {v2, v0}, Lcom/brightcove/player/model/Span;-><init>(Lcom/brightcove/player/model/StyledElement;)V

    move-object v0, v2

    .line 357
    :cond_7
    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 358
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    goto/16 :goto_0

    .line 360
    :cond_8
    if-ne v2, v9, :cond_0

    .line 361
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 363
    const-string v6, "span"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 365
    invoke-static {v5}, Lcom/brightcove/player/captioning/TTMLParser;->getText(Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/brightcove/player/model/Span;->setText(Ljava/lang/String;)V

    .line 366
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 367
    const/4 v0, 0x0

    .line 369
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    invoke-virtual {v5, v7, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 375
    :cond_9
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_b

    .line 376
    if-nez v0, :cond_a

    .line 377
    new-instance v0, Lcom/brightcove/player/model/Span;

    invoke-direct {v0}, Lcom/brightcove/player/model/Span;-><init>()V

    .line 380
    :cond_a
    invoke-static {v5}, Lcom/brightcove/player/captioning/TTMLParser;->getText(Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/brightcove/player/model/Span;->setText(Ljava/lang/String;)V

    .line 381
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 382
    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 388
    :goto_1
    invoke-virtual {v3, v4}, Lcom/brightcove/player/captioning/BrightcoveClosedCaption;->setLines(Ljava/util/List;)V

    .line 390
    return-object v3

    .line 385
    :cond_b
    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method private static parseID(Lcom/brightcove/player/model/Element;Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 2

    .prologue
    .line 419
    if-nez p0, :cond_1

    .line 426
    :cond_0
    :goto_0
    return-void

    .line 422
    :cond_1
    const-string v0, "http://www.w3.org/XML/1998/namespace"

    const-string v1, "id"

    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 423
    invoke-static {v0}, Lcom/brightcove/player/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 424
    invoke-virtual {p0, v0}, Lcom/brightcove/player/model/Element;->setID(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static parseLayout(Lorg/xmlpull/v1/XmlPullParser;)Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/brightcove/player/model/Region;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x2

    .line 266
    sget-object v0, Lcom/brightcove/player/captioning/TTMLParser$Namespaces;->DEFAULT:Ljava/lang/String;

    const-string v1, "layout"

    invoke-interface {p0, v3, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 268
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 269
    :cond_0
    :goto_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    if-ne v1, v4, :cond_1

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "layout"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 270
    :cond_1
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    if-ne v1, v3, :cond_0

    .line 271
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 276
    const-string v2, "region"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 277
    invoke-static {p0}, Lcom/brightcove/player/captioning/TTMLParser;->parseRegion(Lorg/xmlpull/v1/XmlPullParser;)Lcom/brightcove/player/model/Region;

    move-result-object v1

    .line 278
    invoke-virtual {v1}, Lcom/brightcove/player/model/Region;->getID()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 282
    :cond_2
    sget-object v1, Lcom/brightcove/player/captioning/TTMLParser$Namespaces;->DEFAULT:Ljava/lang/String;

    const-string v2, "layout"

    invoke-interface {p0, v4, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 284
    return-object v0
.end method

.method private static parsePositionalAttributes(Lcom/brightcove/player/model/Region;Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 497
    if-nez p0, :cond_1

    .line 520
    :cond_0
    :goto_0
    return-void

    .line 501
    :cond_1
    const-string v0, "http://www.w3.org/ns/ttml#styling"

    const-string v1, "origin"

    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 502
    const-string v1, "http://www.w3.org/ns/ttml#styling"

    const-string v2, "extent"

    invoke-interface {p1, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 503
    const-string v2, "http://www.w3.org/ns/ttml#styling"

    const-string v3, "displayAlign"

    invoke-interface {p1, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 505
    invoke-static {v0}, Lcom/brightcove/player/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 506
    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 507
    new-instance v3, Lcom/brightcove/player/model/Length;

    aget-object v4, v0, v5

    invoke-direct {v3, v4}, Lcom/brightcove/player/model/Length;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Lcom/brightcove/player/model/Region;->setOriginX(Lcom/brightcove/player/model/Length;)V

    .line 508
    new-instance v3, Lcom/brightcove/player/model/Length;

    aget-object v0, v0, v6

    invoke-direct {v3, v0}, Lcom/brightcove/player/model/Length;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Lcom/brightcove/player/model/Region;->setOriginY(Lcom/brightcove/player/model/Length;)V

    .line 511
    :cond_2
    invoke-static {v1}, Lcom/brightcove/player/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 512
    const-string v0, " "

    invoke-virtual {v1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 513
    new-instance v1, Lcom/brightcove/player/model/Length;

    aget-object v3, v0, v5

    invoke-direct {v1, v3}, Lcom/brightcove/player/model/Length;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/brightcove/player/model/Region;->setExtentX(Lcom/brightcove/player/model/Length;)V

    .line 514
    new-instance v1, Lcom/brightcove/player/model/Length;

    aget-object v0, v0, v6

    invoke-direct {v1, v0}, Lcom/brightcove/player/model/Length;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/brightcove/player/model/Region;->setExtentY(Lcom/brightcove/player/model/Length;)V

    .line 517
    :cond_3
    invoke-static {v2}, Lcom/brightcove/player/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 518
    invoke-static {v2}, Lcom/brightcove/player/model/Region$DisplayAlign;->fromString(Ljava/lang/String;)Lcom/brightcove/player/model/Region$DisplayAlign;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/brightcove/player/model/Region;->setDisplayAlign(Lcom/brightcove/player/model/Region$DisplayAlign;)V

    goto :goto_0
.end method

.method private static parseRegion(Lorg/xmlpull/v1/XmlPullParser;)Lcom/brightcove/player/model/Region;
    .locals 3

    .prologue
    const/4 v2, 0x2

    .line 398
    sget-object v0, Lcom/brightcove/player/captioning/TTMLParser$Namespaces;->DEFAULT:Ljava/lang/String;

    const-string v1, "region"

    invoke-interface {p0, v2, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 400
    new-instance v0, Lcom/brightcove/player/model/Region;

    invoke-direct {v0}, Lcom/brightcove/player/model/Region;-><init>()V

    .line 402
    invoke-static {v0, p0}, Lcom/brightcove/player/captioning/TTMLParser;->parseID(Lcom/brightcove/player/model/Element;Lorg/xmlpull/v1/XmlPullParser;)V

    .line 403
    invoke-static {v0, p0}, Lcom/brightcove/player/captioning/TTMLParser;->parseStyledElementAttributes(Lcom/brightcove/player/model/StyledElement;Lorg/xmlpull/v1/XmlPullParser;)V

    .line 405
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    move-result v1

    if-ne v1, v2, :cond_0

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "style"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 407
    invoke-static {v0, p0}, Lcom/brightcove/player/captioning/TTMLParser;->parseStyledElementAttributes(Lcom/brightcove/player/model/StyledElement;Lorg/xmlpull/v1/XmlPullParser;)V

    .line 408
    invoke-static {v0, p0}, Lcom/brightcove/player/captioning/TTMLParser;->parsePositionalAttributes(Lcom/brightcove/player/model/Region;Lorg/xmlpull/v1/XmlPullParser;)V

    .line 411
    :cond_0
    return-object v0
.end method

.method private static parseRoot(Lorg/xmlpull/v1/XmlPullParser;)Lcom/brightcove/player/model/TTMLDocument;
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v1, 0x0

    .line 205
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 208
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 210
    sget-object v2, Lcom/brightcove/player/captioning/TTMLParser$Namespaces;->DEFAULT:Ljava/lang/String;

    const-string v3, "tt"

    invoke-interface {p0, v8, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    move-object v2, v1

    move-object v3, v0

    move-object v0, v1

    .line 212
    :cond_0
    :goto_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v5

    if-eq v5, v7, :cond_4

    .line 213
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v5

    if-ne v5, v8, :cond_0

    .line 214
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    .line 219
    const-string v6, "styling"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 220
    invoke-static {p0}, Lcom/brightcove/player/captioning/TTMLParser;->parseStyling(Lorg/xmlpull/v1/XmlPullParser;)Ljava/util/Map;

    move-result-object v2

    goto :goto_0

    .line 221
    :cond_1
    const-string v6, "layout"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 222
    invoke-static {p0}, Lcom/brightcove/player/captioning/TTMLParser;->parseLayout(Lorg/xmlpull/v1/XmlPullParser;)Ljava/util/Map;

    move-result-object v3

    goto :goto_0

    .line 223
    :cond_2
    const-string v6, "body"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 224
    new-instance v0, Lcom/brightcove/player/model/Block;

    invoke-direct {v0}, Lcom/brightcove/player/model/Block;-><init>()V

    .line 225
    invoke-static {v0, p0}, Lcom/brightcove/player/captioning/TTMLParser;->parseStyledElementAttributes(Lcom/brightcove/player/model/StyledElement;Lorg/xmlpull/v1/XmlPullParser;)V

    .line 226
    invoke-static {v0, p0}, Lcom/brightcove/player/captioning/TTMLParser;->parseBlockAttributes(Lcom/brightcove/player/model/Block;Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    .line 227
    :cond_3
    const-string v6, "p"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 228
    invoke-static {p0}, Lcom/brightcove/player/captioning/TTMLParser;->parseCaption(Lorg/xmlpull/v1/XmlPullParser;)Lcom/brightcove/player/captioning/BrightcoveClosedCaption;

    move-result-object v5

    .line 229
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 233
    :cond_4
    sget-object v5, Lcom/brightcove/player/captioning/TTMLParser$Namespaces;->DEFAULT:Ljava/lang/String;

    invoke-interface {p0, v7, v5, v1}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 235
    new-instance v1, Lcom/brightcove/player/model/TTMLDocument;

    invoke-direct {v1, v3, v2, v0, v4}, Lcom/brightcove/player/model/TTMLDocument;-><init>(Ljava/util/Map;Ljava/util/Map;Lcom/brightcove/player/model/Block;Ljava/util/List;)V

    return-object v1
.end method

.method private static parseStyle(Lorg/xmlpull/v1/XmlPullParser;)Lcom/brightcove/player/model/StyledElement;
    .locals 3

    .prologue
    .line 292
    const/4 v0, 0x2

    sget-object v1, Lcom/brightcove/player/captioning/TTMLParser$Namespaces;->DEFAULT:Ljava/lang/String;

    const-string v2, "style"

    invoke-interface {p0, v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 294
    new-instance v0, Lcom/brightcove/player/model/StyledElement;

    invoke-direct {v0}, Lcom/brightcove/player/model/StyledElement;-><init>()V

    .line 296
    invoke-static {v0, p0}, Lcom/brightcove/player/captioning/TTMLParser;->parseID(Lcom/brightcove/player/model/Element;Lorg/xmlpull/v1/XmlPullParser;)V

    .line 297
    invoke-static {v0, p0}, Lcom/brightcove/player/captioning/TTMLParser;->parseStyledElementAttributes(Lcom/brightcove/player/model/StyledElement;Lorg/xmlpull/v1/XmlPullParser;)V

    .line 299
    return-object v0
.end method

.method private static parseStyledElementAttributes(Lcom/brightcove/player/model/StyledElement;Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 2

    .prologue
    .line 450
    if-nez p0, :cond_1

    .line 493
    :cond_0
    :goto_0
    return-void

    .line 454
    :cond_1
    sget-object v0, Lcom/brightcove/player/captioning/TTMLParser$Namespaces;->DEFAULT:Ljava/lang/String;

    const-string v1, "style"

    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 455
    invoke-static {v0}, Lcom/brightcove/player/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 456
    invoke-virtual {p0, v0}, Lcom/brightcove/player/model/StyledElement;->setStyleName(Ljava/lang/String;)V

    .line 459
    :cond_2
    const-string v0, "http://www.w3.org/ns/ttml#styling"

    const-string v1, "color"

    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 460
    invoke-static {v0}, Lcom/brightcove/player/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 461
    invoke-virtual {p0, v0}, Lcom/brightcove/player/model/StyledElement;->setColor(Ljava/lang/String;)V

    .line 464
    :cond_3
    const-string v0, "http://www.w3.org/ns/ttml#styling"

    const-string v1, "backgroundColor"

    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 465
    invoke-static {v0}, Lcom/brightcove/player/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 466
    invoke-virtual {p0, v0}, Lcom/brightcove/player/model/StyledElement;->setBackgroundColor(Ljava/lang/String;)V

    .line 469
    :cond_4
    const-string v0, "http://www.w3.org/ns/ttml#styling"

    const-string v1, "fontStyle"

    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 470
    invoke-static {v0}, Lcom/brightcove/player/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 471
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/brightcove/player/model/StyledElement$FontStyle;->valueOf(Ljava/lang/String;)Lcom/brightcove/player/model/StyledElement$FontStyle;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/brightcove/player/model/StyledElement;->setFontStyle(Lcom/brightcove/player/model/StyledElement$FontStyle;)V

    .line 474
    :cond_5
    const-string v0, "http://www.w3.org/ns/ttml#styling"

    const-string v1, "textAlign"

    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 475
    invoke-static {v0}, Lcom/brightcove/player/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 476
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/brightcove/player/model/StyledElement$TextAlign;->valueOf(Ljava/lang/String;)Lcom/brightcove/player/model/StyledElement$TextAlign;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/brightcove/player/model/StyledElement;->setTextAlign(Lcom/brightcove/player/model/StyledElement$TextAlign;)V

    .line 479
    :cond_6
    const-string v0, "http://www.w3.org/ns/ttml#styling"

    const-string v1, "fontWeight"

    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 480
    invoke-static {v0}, Lcom/brightcove/player/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 481
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/brightcove/player/model/StyledElement$FontWeight;->valueOf(Ljava/lang/String;)Lcom/brightcove/player/model/StyledElement$FontWeight;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/brightcove/player/model/StyledElement;->setFontWeight(Lcom/brightcove/player/model/StyledElement$FontWeight;)V

    .line 484
    :cond_7
    const-string v0, "http://www.w3.org/ns/ttml#styling"

    const-string v1, "textDecoration"

    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 485
    invoke-static {v0}, Lcom/brightcove/player/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 486
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/brightcove/player/model/StyledElement$TextDecoration;->valueOf(Ljava/lang/String;)Lcom/brightcove/player/model/StyledElement$TextDecoration;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/brightcove/player/model/StyledElement;->setTextDecoration(Lcom/brightcove/player/model/StyledElement$TextDecoration;)V

    .line 489
    :cond_8
    const-string v0, "http://www.w3.org/ns/ttml#styling"

    const-string v1, "fontSize"

    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 490
    invoke-static {v0}, Lcom/brightcove/player/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 491
    new-instance v1, Lcom/brightcove/player/model/Length;

    invoke-direct {v1, v0}, Lcom/brightcove/player/model/Length;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/brightcove/player/model/StyledElement;->setFontSize(Lcom/brightcove/player/model/Length;)V

    goto/16 :goto_0
.end method

.method private static parseStyling(Lorg/xmlpull/v1/XmlPullParser;)Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/brightcove/player/model/StyledElement;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x2

    .line 243
    sget-object v0, Lcom/brightcove/player/captioning/TTMLParser$Namespaces;->DEFAULT:Ljava/lang/String;

    const-string v1, "styling"

    invoke-interface {p0, v3, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 245
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 247
    :cond_0
    :goto_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    if-ne v1, v4, :cond_1

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "styling"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 248
    :cond_1
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    if-ne v1, v3, :cond_0

    .line 249
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 254
    const-string v2, "style"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 255
    invoke-static {p0}, Lcom/brightcove/player/captioning/TTMLParser;->parseStyle(Lorg/xmlpull/v1/XmlPullParser;)Lcom/brightcove/player/model/StyledElement;

    move-result-object v1

    .line 256
    invoke-virtual {v1}, Lcom/brightcove/player/model/StyledElement;->getID()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 260
    :cond_2
    sget-object v1, Lcom/brightcove/player/captioning/TTMLParser$Namespaces;->DEFAULT:Ljava/lang/String;

    const-string v2, "styling"

    invoke-interface {p0, v4, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 262
    return-object v0
.end method

.method public static parseTimeValue(Ljava/lang/String;)I
    .locals 5

    .prologue
    const/4 v2, 0x4

    .line 181
    invoke-static {p0}, Lcom/brightcove/player/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 183
    :try_start_0
    sget-object v0, Lcom/brightcove/player/captioning/TTMLParser;->timeFormatPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 184
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->groupCount()I

    move-result v1

    if-lt v1, v2, :cond_0

    .line 185
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    .line 186
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    .line 187
    const/4 v3, 0x3

    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    .line 188
    const/4 v4, 0x4

    invoke-virtual {v0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    .line 190
    invoke-static {v1}, Lcom/brightcove/player/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {v2}, Lcom/brightcove/player/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {v3}, Lcom/brightcove/player/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {v0}, Lcom/brightcove/player/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 191
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v1, v2, v3, v0}, Lcom/brightcove/player/captioning/TTMLParser;->calculateDuration(IIII)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 196
    :goto_0
    return v0

    :catch_0
    move-exception v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public static parseXml(Ljava/io/InputStream;Ljava/lang/String;)Lcom/brightcove/player/model/TTMLDocument;
    .locals 3

    .prologue
    .line 122
    :try_start_0
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v0

    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    .line 123
    const-string v1, "http://xmlpull.org/v1/doc/features.html#process-namespaces"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->setFeature(Ljava/lang/String;Z)V

    .line 124
    invoke-interface {v0, p0, p1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 127
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    .line 129
    invoke-static {v0}, Lcom/brightcove/player/captioning/TTMLParser;->parseRoot(Lorg/xmlpull/v1/XmlPullParser;)Lcom/brightcove/player/model/TTMLDocument;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 131
    if-eqz p0, :cond_0

    .line 132
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    :cond_0
    return-object v0

    .line 131
    :catchall_0
    move-exception v0

    if-eqz p0, :cond_1

    .line 132
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    :cond_1
    throw v0
.end method

.method public static parseXml(Ljava/io/Reader;)Lcom/brightcove/player/model/TTMLDocument;
    .locals 3

    .prologue
    .line 146
    :try_start_0
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    .line 147
    const-string v1, "http://xmlpull.org/v1/doc/features.html#process-namespaces"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->setFeature(Ljava/lang/String;Z)V

    .line 148
    invoke-interface {v0, p0}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 151
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    .line 152
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "detected XML encoding for TTML is: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getInputEncoding()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    invoke-static {v0}, Lcom/brightcove/player/captioning/TTMLParser;->parseRoot(Lorg/xmlpull/v1/XmlPullParser;)Lcom/brightcove/player/model/TTMLDocument;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 156
    if-eqz p0, :cond_0

    .line 157
    invoke-virtual {p0}, Ljava/io/Reader;->close()V

    :cond_0
    return-object v0

    .line 156
    :catchall_0
    move-exception v0

    if-eqz p0, :cond_1

    .line 157
    invoke-virtual {p0}, Ljava/io/Reader;->close()V

    :cond_1
    throw v0
.end method
