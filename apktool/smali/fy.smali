.class public final Lfy;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfy$e;,
        Lfy$b;,
        Lfy$d;,
        Lfy$f;,
        Lfy$a;,
        Lfy$c;
    }
.end annotation


# static fields
.field private static a:Z

.field private static final b:Ljava/util/regex/Pattern;

.field private static final c:Landroid/graphics/RectF;

.field private static final d:Landroid/graphics/Matrix;

.field private static final e:Landroid/graphics/Matrix;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 51
    const/4 v0, 0x1

    sput-boolean v0, Lfy;->a:Z

    .line 189
    const-string v0, "[\\s,]*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lfy;->b:Ljava/util/regex/Pattern;

    .line 497
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    sput-object v0, Lfy;->c:Landroid/graphics/RectF;

    .line 498
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    sput-object v0, Lfy;->d:Landroid/graphics/Matrix;

    .line 499
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    sput-object v0, Lfy;->e:Landroid/graphics/Matrix;

    return-void
.end method

.method private static a(FFFF)F
    .locals 6

    .prologue
    .line 494
    float-to-double v0, p0

    float-to-double v2, p1

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    float-to-double v2, p2

    float-to-double v4, p3

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v2

    sub-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v0

    double-to-float v0, v0

    const/high16 v1, 0x43b40000    # 360.0f

    rem-float/2addr v0, v1

    return v0
.end method

.method static synthetic a(Ljava/lang/String;Lorg/xml/sax/Attributes;F)F
    .locals 2

    .prologue
    .line 47
    invoke-static {p0, p1}, Lfy;->d(Ljava/lang/String;Lorg/xml/sax/Attributes;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-static {v0, v1}, Lfy;->a(Ljava/lang/String;Ljava/lang/Float;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    return v0
.end method

.method static synthetic a(Ljava/lang/String;)Landroid/graphics/Matrix;
    .locals 12

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x6

    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v1, 0x0

    .line 47
    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    :goto_0
    const-string v0, "matrix("

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lfy;->d(Ljava/lang/String;)Lfy$c;

    move-result-object v2

    iget-object v0, v2, Lfy$c;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v0, v10, :cond_0

    new-instance v4, Landroid/graphics/Matrix;

    invoke-direct {v4}, Landroid/graphics/Matrix;-><init>()V

    const/16 v0, 0x9

    new-array v5, v0, [F

    iget-object v0, v2, Lfy$c;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    aput v0, v5, v8

    iget-object v0, v2, Lfy$c;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    aput v0, v5, v9

    iget-object v0, v2, Lfy$c;->a:Ljava/util/ArrayList;

    const/4 v6, 0x4

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    aput v0, v5, v11

    const/4 v6, 0x3

    iget-object v0, v2, Lfy$c;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    aput v0, v5, v6

    const/4 v6, 0x4

    iget-object v0, v2, Lfy$c;->a:Ljava/util/ArrayList;

    const/4 v7, 0x3

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    aput v0, v5, v6

    const/4 v6, 0x5

    iget-object v0, v2, Lfy$c;->a:Ljava/util/ArrayList;

    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    aput v0, v5, v6

    aput v1, v5, v10

    const/4 v0, 0x7

    aput v1, v5, v0

    const/16 v0, 0x8

    const/high16 v2, 0x3f800000    # 1.0f

    aput v2, v5, v0

    invoke-virtual {v4, v5}, Landroid/graphics/Matrix;->setValues([F)V

    invoke-virtual {v3, v4}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    :cond_0
    :goto_1
    const-string v0, ")"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_7

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v4, v0, 0x1

    if-le v2, v4, :cond_7

    sget-object v2, Lfy;->b:Ljava/util/regex/Pattern;

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->replaceFirst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0

    :cond_1
    const-string v0, "translate("

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lfy;->d(Ljava/lang/String;)Lfy$c;

    move-result-object v2

    iget-object v0, v2, Lfy$c;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, v2, Lfy$c;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v4

    iget-object v0, v2, Lfy$c;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, v9, :cond_a

    iget-object v0, v2, Lfy$c;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    :goto_2
    invoke-virtual {v3, v4, v0}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    goto :goto_1

    :cond_2
    const-string v0, "scale("

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lfy;->d(Ljava/lang/String;)Lfy$c;

    move-result-object v4

    iget-object v0, v4, Lfy$c;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, v4, Lfy$c;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v2

    iget-object v0, v4, Lfy$c;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, v9, :cond_9

    iget-object v0, v4, Lfy$c;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    :goto_3
    invoke-virtual {v3, v2, v0}, Landroid/graphics/Matrix;->preScale(FF)Z

    goto/16 :goto_1

    :cond_3
    const-string v0, "skewX("

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lfy;->d(Ljava/lang/String;)Lfy$c;

    move-result-object v0

    iget-object v2, v0, Lfy$c;->a:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    iget-object v0, v0, Lfy$c;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    float-to-double v4, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->tan(D)D

    move-result-wide v4

    double-to-float v0, v4

    invoke-virtual {v3, v0, v1}, Landroid/graphics/Matrix;->preSkew(FF)Z

    goto/16 :goto_1

    :cond_4
    const-string v0, "skewY("

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lfy;->d(Ljava/lang/String;)Lfy$c;

    move-result-object v0

    iget-object v2, v0, Lfy$c;->a:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    iget-object v0, v0, Lfy$c;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    float-to-double v4, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->tan(D)D

    move-result-wide v4

    double-to-float v0, v4

    invoke-virtual {v3, v1, v0}, Landroid/graphics/Matrix;->preSkew(FF)Z

    goto/16 :goto_1

    :cond_5
    const-string v0, "rotate("

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lfy;->d(Ljava/lang/String;)Lfy$c;

    move-result-object v4

    iget-object v0, v4, Lfy$c;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, v4, Lfy$c;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v5

    iget-object v0, v4, Lfy$c;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, v11, :cond_8

    iget-object v0, v4, Lfy$c;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v2

    iget-object v0, v4, Lfy$c;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    :goto_4
    neg-float v4, v2

    neg-float v6, v0

    invoke-virtual {v3, v4, v6}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    invoke-virtual {v3, v5}, Landroid/graphics/Matrix;->preRotate(F)Z

    invoke-virtual {v3, v2, v0}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    goto/16 :goto_1

    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Invalid transform ("

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    :cond_7
    return-object v3

    :cond_8
    move v0, v1

    move v2, v1

    goto :goto_4

    :cond_9
    move v0, v2

    goto/16 :goto_3

    :cond_a
    move v0, v1

    goto/16 :goto_2
.end method

.method static a(Lorg/xml/sax/InputSource;Lfy$e;)Lfu;
    .locals 4

    .prologue
    .line 65
    :try_start_0
    new-instance v0, Landroid/graphics/Picture;

    invoke-direct {v0}, Landroid/graphics/Picture;-><init>()V

    .line 66
    iput-object v0, p1, Lfy$e;->a:Landroid/graphics/Picture;

    .line 68
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v1

    .line 69
    invoke-virtual {v1}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v1

    .line 70
    invoke-virtual {v1}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v1

    .line 71
    invoke-interface {v1, p1}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 72
    const-string v2, "http://xml.org/sax/features/validation"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lorg/xml/sax/XMLReader;->setFeature(Ljava/lang/String;Z)V

    .line 73
    sget-boolean v2, Lfy;->a:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v2, :cond_0

    .line 75
    :try_start_1
    const-string v2, "http://apache.org/xml/features/disallow-doctype-decl"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Lorg/xml/sax/XMLReader;->setFeature(Ljava/lang/String;Z)V
    :try_end_1
    .catch Lorg/xml/sax/SAXNotRecognizedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 80
    :cond_0
    :goto_0
    :try_start_2
    invoke-interface {v1, p0}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V

    .line 82
    new-instance v1, Lfu;

    iget-object v2, p1, Lfy$e;->s:Landroid/graphics/RectF;

    invoke-direct {v1, v0, v2}, Lfu;-><init>(Landroid/graphics/Picture;Landroid/graphics/RectF;)V

    .line 84
    iget-object v0, p1, Lfy$e;->t:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    invoke-static {v0}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v0

    if-nez v0, :cond_1

    .line 85
    iget-object v0, p1, Lfy$e;->t:Landroid/graphics/RectF;

    iput-object v0, v1, Lfu;->a:Landroid/graphics/RectF;

    .line 87
    :cond_1
    return-object v1

    .line 77
    :catch_0
    move-exception v2

    const/4 v2, 0x0

    sput-boolean v2, Lfy;->a:Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 88
    :catch_1
    move-exception v0

    .line 89
    new-instance v1, Lfx;

    invoke-direct {v1, v0}, Lfx;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static a(Ljava/lang/String;Ljava/lang/Float;)Ljava/lang/Float;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 616
    if-nez p0, :cond_0

    .line 625
    :goto_0
    return-object p1

    .line 618
    :cond_0
    const-string v0, "px"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 619
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 625
    :cond_1
    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    goto :goto_0

    .line 620
    :cond_2
    const-string v0, "%"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 621
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 622
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    goto :goto_0
.end method

.method static synthetic a(Ljava/lang/String;Lorg/xml/sax/Attributes;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    invoke-static {p0, p1}, Lfy;->d(Ljava/lang/String;Lorg/xml/sax/Attributes;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Ljava/lang/String;)Ljava/lang/Float;
    .locals 1

    .prologue
    .line 47
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lfy;->a(Ljava/lang/String;Ljava/lang/Float;)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Ljava/lang/String;Lorg/xml/sax/Attributes;)Ljava/lang/Float;
    .locals 2

    .prologue
    .line 47
    invoke-static {p0, p1}, Lfy;->d(Ljava/lang/String;Lorg/xml/sax/Attributes;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lfy;->a(Ljava/lang/String;Ljava/lang/Float;)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method static synthetic c(Ljava/lang/String;)Landroid/graphics/Path;
    .locals 34

    .prologue
    .line 47
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v20

    new-instance v21, Lft;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lft;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual/range {v21 .. v21}, Lft;->a()V

    new-instance v4, Landroid/graphics/Path;

    invoke-direct {v4}, Landroid/graphics/Path;-><init>()V

    const/4 v11, 0x0

    const/4 v10, 0x0

    const/4 v9, 0x0

    const/4 v8, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x0

    move v12, v6

    move v13, v7

    move v14, v9

    move v15, v10

    move/from16 v16, v11

    move v6, v8

    :goto_0
    move-object/from16 v0, v21

    iget v7, v0, Lft;->a:I

    move/from16 v0, v20

    if-ge v7, v0, :cond_14

    move-object/from16 v0, v21

    iget v7, v0, Lft;->a:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    packed-switch v7, :pswitch_data_0

    :cond_0
    :pswitch_0
    invoke-virtual/range {v21 .. v21}, Lft;->b()V

    move/from16 v19, v7

    move v11, v7

    :goto_1
    const/4 v10, 0x0

    sparse-switch v19, :sswitch_data_0

    invoke-virtual/range {v21 .. v21}, Lft;->b()V

    move v5, v12

    move v7, v6

    move v8, v14

    move v9, v15

    move v6, v13

    move v12, v10

    move/from16 v10, v16

    :goto_2
    if-nez v12, :cond_1

    move v7, v9

    move v8, v10

    :cond_1
    invoke-virtual/range {v21 .. v21}, Lft;->a()V

    move v12, v5

    move v13, v6

    move v14, v8

    move v15, v9

    move/from16 v16, v10

    move v6, v7

    move v5, v11

    goto :goto_0

    :pswitch_1
    const/16 v8, 0x6d

    if-eq v5, v8, :cond_2

    const/16 v8, 0x4d

    if-ne v5, v8, :cond_3

    :cond_2
    add-int/lit8 v7, v5, -0x1

    int-to-char v7, v7

    move/from16 v19, v7

    move v11, v5

    goto :goto_1

    :cond_3
    const-string v8, "lhvcsqta"

    invoke-static {v5}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    if-ltz v8, :cond_0

    move/from16 v19, v5

    move v11, v5

    goto :goto_1

    :sswitch_0
    invoke-virtual/range {v21 .. v21}, Lft;->c()F

    move-result v7

    invoke-virtual/range {v21 .. v21}, Lft;->c()F

    move-result v5

    const/16 v8, 0x6d

    move/from16 v0, v19

    if-ne v0, v8, :cond_4

    add-float/2addr v13, v7

    add-float/2addr v12, v5

    invoke-virtual {v4, v7, v5}, Landroid/graphics/Path;->rMoveTo(FF)V

    add-float v16, v16, v7

    add-float/2addr v15, v5

    move v5, v12

    move v7, v6

    move v8, v14

    move v9, v15

    move v6, v13

    move v12, v10

    move/from16 v10, v16

    goto :goto_2

    :cond_4
    invoke-virtual {v4, v7, v5}, Landroid/graphics/Path;->moveTo(FF)V

    move v12, v10

    move v8, v14

    move v9, v5

    move v10, v7

    move/from16 v32, v6

    move v6, v7

    move/from16 v7, v32

    goto :goto_2

    :sswitch_1
    invoke-virtual {v4}, Landroid/graphics/Path;->close()V

    invoke-virtual {v4, v13, v12}, Landroid/graphics/Path;->moveTo(FF)V

    const/4 v5, 0x1

    move v6, v13

    move v7, v12

    move v8, v13

    move v9, v12

    move v10, v13

    move/from16 v32, v12

    move v12, v5

    move/from16 v5, v32

    goto :goto_2

    :sswitch_2
    invoke-virtual/range {v21 .. v21}, Lft;->c()F

    move-result v7

    invoke-virtual/range {v21 .. v21}, Lft;->c()F

    move-result v9

    const/16 v5, 0x6c

    move/from16 v0, v19

    if-ne v0, v5, :cond_5

    invoke-virtual {v4, v7, v9}, Landroid/graphics/Path;->rLineTo(FF)V

    add-float v16, v16, v7

    add-float/2addr v15, v9

    move v5, v12

    move v7, v6

    move v8, v14

    move v9, v15

    move v6, v13

    move v12, v10

    move/from16 v10, v16

    goto/16 :goto_2

    :cond_5
    invoke-virtual {v4, v7, v9}, Landroid/graphics/Path;->lineTo(FF)V

    move v5, v12

    move v8, v14

    move v12, v10

    move v10, v7

    move v7, v6

    move v6, v13

    goto/16 :goto_2

    :sswitch_3
    invoke-virtual/range {v21 .. v21}, Lft;->c()F

    move-result v9

    const/16 v5, 0x68

    move/from16 v0, v19

    if-ne v0, v5, :cond_6

    const/4 v5, 0x0

    invoke-virtual {v4, v9, v5}, Landroid/graphics/Path;->rLineTo(FF)V

    add-float v16, v16, v9

    move v5, v12

    move v7, v6

    move v8, v14

    move v9, v15

    move v6, v13

    move v12, v10

    move/from16 v10, v16

    goto/16 :goto_2

    :cond_6
    invoke-virtual {v4, v9, v15}, Landroid/graphics/Path;->lineTo(FF)V

    move v5, v12

    move v7, v6

    move v8, v14

    move v12, v10

    move v6, v13

    move v10, v9

    move v9, v15

    goto/16 :goto_2

    :sswitch_4
    invoke-virtual/range {v21 .. v21}, Lft;->c()F

    move-result v9

    const/16 v5, 0x76

    move/from16 v0, v19

    if-ne v0, v5, :cond_7

    const/4 v5, 0x0

    invoke-virtual {v4, v5, v9}, Landroid/graphics/Path;->rLineTo(FF)V

    add-float/2addr v15, v9

    move v5, v12

    move v7, v6

    move v8, v14

    move v9, v15

    move v6, v13

    move v12, v10

    move/from16 v10, v16

    goto/16 :goto_2

    :cond_7
    move/from16 v0, v16

    invoke-virtual {v4, v0, v9}, Landroid/graphics/Path;->lineTo(FF)V

    move v5, v12

    move v7, v6

    move v8, v14

    move v12, v10

    move v6, v13

    move/from16 v10, v16

    goto/16 :goto_2

    :sswitch_5
    const/4 v14, 0x1

    invoke-virtual/range {v21 .. v21}, Lft;->c()F

    move-result v5

    invoke-virtual/range {v21 .. v21}, Lft;->c()F

    move-result v6

    invoke-virtual/range {v21 .. v21}, Lft;->c()F

    move-result v7

    invoke-virtual/range {v21 .. v21}, Lft;->c()F

    move-result v8

    invoke-virtual/range {v21 .. v21}, Lft;->c()F

    move-result v9

    invoke-virtual/range {v21 .. v21}, Lft;->c()F

    move-result v10

    const/16 v17, 0x63

    move/from16 v0, v19

    move/from16 v1, v17

    if-ne v0, v1, :cond_8

    add-float v5, v5, v16

    add-float v7, v7, v16

    add-float v9, v9, v16

    add-float/2addr v6, v15

    add-float/2addr v8, v15

    add-float/2addr v10, v15

    :cond_8
    invoke-virtual/range {v4 .. v10}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    move v5, v12

    move v6, v13

    move v12, v14

    move/from16 v32, v8

    move v8, v7

    move/from16 v7, v32

    move/from16 v33, v10

    move v10, v9

    move/from16 v9, v33

    goto/16 :goto_2

    :sswitch_6
    const/16 v17, 0x1

    invoke-virtual/range {v21 .. v21}, Lft;->c()F

    move-result v7

    invoke-virtual/range {v21 .. v21}, Lft;->c()F

    move-result v8

    invoke-virtual/range {v21 .. v21}, Lft;->c()F

    move-result v9

    invoke-virtual/range {v21 .. v21}, Lft;->c()F

    move-result v10

    invoke-static/range {v19 .. v19}, Ljava/lang/Character;->isLowerCase(C)Z

    move-result v5

    if-eqz v5, :cond_9

    add-float v7, v7, v16

    add-float v9, v9, v16

    add-float/2addr v8, v15

    add-float/2addr v10, v15

    :cond_9
    const/high16 v5, 0x40000000    # 2.0f

    mul-float v5, v5, v16

    sub-float/2addr v5, v14

    const/high16 v14, 0x40000000    # 2.0f

    mul-float/2addr v14, v15

    sub-float v6, v14, v6

    invoke-virtual/range {v4 .. v10}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    move v5, v12

    move v6, v13

    move/from16 v12, v17

    move/from16 v32, v8

    move v8, v7

    move/from16 v7, v32

    move/from16 v33, v10

    move v10, v9

    move/from16 v9, v33

    goto/16 :goto_2

    :sswitch_7
    invoke-virtual/range {v21 .. v21}, Lft;->c()F

    move-result v5

    invoke-virtual/range {v21 .. v21}, Lft;->c()F

    move-result v7

    invoke-virtual/range {v21 .. v21}, Lft;->c()F

    move-result v22

    invoke-virtual/range {v21 .. v21}, Lft;->d()I

    move-result v23

    invoke-virtual/range {v21 .. v21}, Lft;->d()I

    move-result v24

    invoke-virtual/range {v21 .. v21}, Lft;->c()F

    move-result v18

    invoke-virtual/range {v21 .. v21}, Lft;->c()F

    move-result v17

    const/16 v8, 0x61

    move/from16 v0, v19

    if-ne v0, v8, :cond_a

    add-float v18, v18, v16

    add-float v17, v17, v15

    :cond_a
    const/4 v8, 0x0

    cmpl-float v8, v5, v8

    if-eqz v8, :cond_b

    const/4 v8, 0x0

    cmpl-float v8, v7, v8

    if-nez v8, :cond_d

    :cond_b
    move/from16 v0, v18

    move/from16 v1, v17

    invoke-virtual {v4, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    :cond_c
    :goto_3
    move v5, v12

    move v7, v6

    move v8, v14

    move/from16 v9, v17

    move v6, v13

    move v12, v10

    move/from16 v10, v18

    goto/16 :goto_2

    :cond_d
    cmpl-float v8, v18, v16

    if-nez v8, :cond_e

    cmpl-float v8, v17, v15

    if-eqz v8, :cond_c

    :cond_e
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v9

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v8

    const v5, 0x40490fdb    # (float)Math.PI

    mul-float v5, v5, v22

    const/high16 v7, 0x43340000    # 180.0f

    div-float/2addr v5, v7

    invoke-static {v5}, Landroid/util/FloatMath;->sin(F)F

    move-result v19

    invoke-static {v5}, Landroid/util/FloatMath;->cos(F)F

    move-result v25

    sub-float v5, v16, v18

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v5, v7

    sub-float v7, v15, v17

    const/high16 v26, 0x40000000    # 2.0f

    div-float v7, v7, v26

    mul-float v26, v25, v5

    mul-float v27, v19, v7

    add-float v26, v26, v27

    move/from16 v0, v19

    neg-float v0, v0

    move/from16 v27, v0

    mul-float v5, v5, v27

    mul-float v7, v7, v25

    add-float v27, v5, v7

    mul-float v28, v26, v26

    mul-float v29, v27, v27

    mul-float v7, v9, v9

    mul-float v5, v8, v8

    div-float v30, v28, v7

    div-float v31, v29, v5

    add-float v30, v30, v31

    const v31, 0x3f8020c5    # 1.001f

    mul-float v30, v30, v31

    const/high16 v31, 0x3f800000    # 1.0f

    cmpl-float v31, v30, v31

    if-lez v31, :cond_f

    invoke-static/range {v30 .. v30}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v5

    mul-float/2addr v9, v5

    mul-float/2addr v8, v5

    mul-float v7, v9, v9

    mul-float v5, v8, v8

    :cond_f
    mul-float v30, v7, v5

    mul-float v31, v7, v29

    sub-float v30, v30, v31

    mul-float v31, v5, v28

    sub-float v30, v30, v31

    mul-float v7, v7, v29

    mul-float v5, v5, v28

    add-float/2addr v5, v7

    div-float v5, v30, v5

    invoke-static {v5}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v7

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_11

    const/4 v5, -0x1

    :goto_4
    int-to-float v5, v5

    mul-float/2addr v5, v7

    mul-float v7, v5, v9

    mul-float v7, v7, v27

    div-float/2addr v7, v8

    neg-float v5, v5

    mul-float/2addr v5, v8

    mul-float v5, v5, v26

    div-float/2addr v5, v9

    mul-float v23, v25, v7

    mul-float v28, v19, v5

    sub-float v23, v23, v28

    add-float v16, v16, v18

    const/high16 v28, 0x40000000    # 2.0f

    div-float v16, v16, v28

    add-float v16, v16, v23

    mul-float v19, v19, v7

    mul-float v23, v25, v5

    add-float v19, v19, v23

    add-float v15, v15, v17

    const/high16 v23, 0x40000000    # 2.0f

    div-float v15, v15, v23

    add-float v15, v15, v19

    const/high16 v19, 0x3f800000    # 1.0f

    const/16 v23, 0x0

    sub-float v25, v26, v7

    div-float v25, v25, v9

    sub-float v28, v27, v5

    div-float v28, v28, v8

    move/from16 v0, v19

    move/from16 v1, v23

    move/from16 v2, v25

    move/from16 v3, v28

    invoke-static {v0, v1, v2, v3}, Lfy;->a(FFFF)F

    move-result v19

    sub-float v23, v26, v7

    div-float v23, v23, v9

    sub-float v25, v27, v5

    div-float v25, v25, v8

    move/from16 v0, v26

    neg-float v0, v0

    move/from16 v26, v0

    sub-float v7, v26, v7

    div-float/2addr v7, v9

    move/from16 v0, v27

    neg-float v0, v0

    move/from16 v26, v0

    sub-float v5, v26, v5

    div-float/2addr v5, v8

    move/from16 v0, v23

    move/from16 v1, v25

    invoke-static {v0, v1, v7, v5}, Lfy;->a(FFFF)F

    move-result v5

    if-nez v24, :cond_12

    const/4 v7, 0x0

    cmpl-float v7, v5, v7

    if-lez v7, :cond_12

    const/high16 v7, 0x43b40000    # 360.0f

    sub-float/2addr v5, v7

    :cond_10
    :goto_5
    const/high16 v7, 0x43b40000    # 360.0f

    rem-float v7, v22, v7

    const/16 v23, 0x0

    cmpl-float v7, v7, v23

    if-nez v7, :cond_13

    sget-object v7, Lfy;->c:Landroid/graphics/RectF;

    sub-float v22, v16, v9

    sub-float v23, v15, v8

    add-float v9, v9, v16

    add-float/2addr v8, v15

    move/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v7, v0, v1, v9, v8}, Landroid/graphics/RectF;->set(FFFF)V

    sget-object v7, Lfy;->c:Landroid/graphics/RectF;

    move/from16 v0, v19

    invoke-virtual {v4, v7, v0, v5}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    goto/16 :goto_3

    :cond_11
    const/4 v5, 0x1

    goto/16 :goto_4

    :cond_12
    if-eqz v24, :cond_10

    const/4 v7, 0x0

    cmpg-float v7, v5, v7

    if-gez v7, :cond_10

    const/high16 v7, 0x43b40000    # 360.0f

    add-float/2addr v5, v7

    goto :goto_5

    :cond_13
    sget-object v7, Lfy;->c:Landroid/graphics/RectF;

    neg-float v0, v9

    move/from16 v23, v0

    neg-float v0, v8

    move/from16 v24, v0

    move/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v7, v0, v1, v9, v8}, Landroid/graphics/RectF;->set(FFFF)V

    sget-object v7, Lfy;->d:Landroid/graphics/Matrix;

    invoke-virtual {v7}, Landroid/graphics/Matrix;->reset()V

    sget-object v7, Lfy;->d:Landroid/graphics/Matrix;

    move/from16 v0, v22

    invoke-virtual {v7, v0}, Landroid/graphics/Matrix;->postRotate(F)Z

    sget-object v7, Lfy;->d:Landroid/graphics/Matrix;

    move/from16 v0, v16

    invoke-virtual {v7, v0, v15}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    sget-object v7, Lfy;->d:Landroid/graphics/Matrix;

    sget-object v8, Lfy;->e:Landroid/graphics/Matrix;

    invoke-virtual {v7, v8}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    sget-object v7, Lfy;->e:Landroid/graphics/Matrix;

    invoke-virtual {v4, v7}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    sget-object v7, Lfy;->c:Landroid/graphics/RectF;

    move/from16 v0, v19

    invoke-virtual {v4, v7, v0, v5}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    sget-object v5, Lfy;->d:Landroid/graphics/Matrix;

    invoke-virtual {v4, v5}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    goto/16 :goto_3

    :cond_14
    return-object v4

    :pswitch_data_0
    .packed-switch 0x2b
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x41 -> :sswitch_7
        0x43 -> :sswitch_5
        0x48 -> :sswitch_3
        0x4c -> :sswitch_2
        0x4d -> :sswitch_0
        0x51 -> :sswitch_6
        0x53 -> :sswitch_6
        0x54 -> :sswitch_2
        0x56 -> :sswitch_4
        0x5a -> :sswitch_1
        0x61 -> :sswitch_7
        0x63 -> :sswitch_5
        0x68 -> :sswitch_3
        0x6c -> :sswitch_2
        0x6d -> :sswitch_0
        0x71 -> :sswitch_6
        0x73 -> :sswitch_6
        0x74 -> :sswitch_2
        0x76 -> :sswitch_4
        0x7a -> :sswitch_1
    .end sparse-switch
.end method

.method static synthetic c(Ljava/lang/String;Lorg/xml/sax/Attributes;)Lfy$c;
    .locals 3

    .prologue
    .line 47
    invoke-interface {p1}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    invoke-interface {p1, v0}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1, v0}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lfy;->d(Ljava/lang/String;)Lfy$c;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private static d(Ljava/lang/String;)Lfy$c;
    .locals 11

    .prologue
    const/4 v1, 0x1

    const/4 v4, 0x0

    .line 96
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    .line 98
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    move v3, v1

    move v2, v4

    move v0, v4

    move v5, v4

    .line 101
    :goto_0
    if-ge v3, v6, :cond_5

    .line 102
    if-eqz v0, :cond_0

    move v0, v2

    move v2, v4

    .line 101
    :goto_1
    add-int/lit8 v3, v3, 0x1

    move v10, v0

    move v0, v2

    move v2, v10

    goto :goto_0

    .line 106
    :cond_0
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v8

    .line 107
    sparse-switch v8, :sswitch_data_0

    :cond_1
    move v2, v0

    move v0, v4

    .line 172
    goto :goto_1

    .line 130
    :sswitch_0
    invoke-virtual {p0, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 131
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_2

    .line 133
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    .line 134
    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 137
    :cond_2
    new-instance v0, Lfy$c;

    invoke-direct {v0, v7, v3}, Lfy$c;-><init>(Ljava/util/ArrayList;I)V

    .line 186
    :goto_2
    return-object v0

    .line 141
    :sswitch_1
    if-nez v2, :cond_1

    .line 142
    :sswitch_2
    invoke-virtual {p0, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 152
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_4

    .line 154
    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    .line 155
    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 156
    const/16 v2, 0x2d

    if-ne v8, v2, :cond_3

    move v2, v3

    :goto_3
    move v5, v2

    move v2, v0

    move v0, v4

    .line 166
    goto :goto_1

    .line 159
    :cond_3
    add-int/lit8 v0, v3, 0x1

    move v2, v0

    move v0, v1

    .line 162
    goto :goto_3

    .line 163
    :cond_4
    add-int/lit8 v2, v5, 0x1

    goto :goto_3

    :sswitch_3
    move v2, v0

    move v0, v1

    .line 170
    goto :goto_1

    .line 176
    :cond_5
    invoke-virtual {p0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 177
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_6

    .line 180
    :try_start_0
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 184
    :goto_4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    .line 186
    :cond_6
    new-instance v0, Lfy$c;

    invoke-direct {v0, v7, v5}, Lfy$c;-><init>(Ljava/util/ArrayList;I)V

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_4

    .line 107
    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_2
        0xa -> :sswitch_2
        0x20 -> :sswitch_2
        0x29 -> :sswitch_0
        0x2c -> :sswitch_2
        0x2d -> :sswitch_1
        0x41 -> :sswitch_0
        0x43 -> :sswitch_0
        0x48 -> :sswitch_0
        0x4c -> :sswitch_0
        0x4d -> :sswitch_0
        0x51 -> :sswitch_0
        0x53 -> :sswitch_0
        0x54 -> :sswitch_0
        0x56 -> :sswitch_0
        0x5a -> :sswitch_0
        0x61 -> :sswitch_0
        0x63 -> :sswitch_0
        0x65 -> :sswitch_3
        0x68 -> :sswitch_0
        0x6c -> :sswitch_0
        0x6d -> :sswitch_0
        0x71 -> :sswitch_0
        0x73 -> :sswitch_0
        0x74 -> :sswitch_0
        0x76 -> :sswitch_0
        0x7a -> :sswitch_0
    .end sparse-switch
.end method

.method private static d(Ljava/lang/String;Lorg/xml/sax/Attributes;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 592
    invoke-interface {p1}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v1

    .line 593
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    .line 594
    invoke-interface {p1, v0}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 595
    invoke-interface {p1, v0}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v0

    .line 598
    :goto_1
    return-object v0

    .line 593
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 598
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method
