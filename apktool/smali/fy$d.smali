.class final Lfy$d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "d"
.end annotation


# instance fields
.field a:Lfy$f;

.field b:Lorg/xml/sax/Attributes;


# direct methods
.method private constructor <init>(Lorg/xml/sax/Attributes;)V
    .locals 3

    .prologue
    .line 728
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 725
    const/4 v0, 0x0

    iput-object v0, p0, Lfy$d;->a:Lfy$f;

    .line 729
    iput-object p1, p0, Lfy$d;->b:Lorg/xml/sax/Attributes;

    .line 730
    const-string v0, "style"

    invoke-static {v0, p1}, Lfy;->a(Ljava/lang/String;Lorg/xml/sax/Attributes;)Ljava/lang/String;

    move-result-object v0

    .line 731
    if-eqz v0, :cond_0

    .line 732
    new-instance v1, Lfy$f;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lfy$f;-><init>(Ljava/lang/String;B)V

    iput-object v1, p0, Lfy$d;->a:Lfy$f;

    .line 734
    :cond_0
    return-void
.end method

.method synthetic constructor <init>(Lorg/xml/sax/Attributes;B)V
    .locals 0

    .prologue
    .line 724
    invoke-direct {p0, p1}, Lfy$d;-><init>(Lorg/xml/sax/Attributes;)V

    return-void
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 764
    .line 765
    if-nez p0, :cond_0

    .line 783
    :goto_0
    return-object v0

    .line 767
    :cond_0
    const-string v1, "#"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 769
    :try_start_0
    invoke-static {p0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v0

    goto :goto_0

    .line 773
    :cond_1
    const-string v1, "rgb("

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, ")"

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 774
    const/4 v1, 0x4

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 776
    const/4 v2, 0x0

    :try_start_1
    aget-object v2, v1, v2

    invoke-static {v2}, Lfy$d;->d(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x1

    aget-object v3, v1, v3

    invoke-static {v3}, Lfy$d;->d(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x2

    aget-object v1, v1, v4

    invoke-static {v1}, Lfy$d;->d(Ljava/lang/String;)I

    move-result v1

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v2, v3

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto :goto_0

    .line 783
    :cond_2
    invoke-static {p0}, Lfw;->a(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 780
    :catch_0
    move-exception v1

    goto :goto_0

    .line 778
    :catch_1
    move-exception v1

    goto :goto_0

    .line 771
    :catch_2
    move-exception v1

    goto :goto_0
.end method

.method private static d(Ljava/lang/String;)I
    .locals 2

    .prologue
    .line 756
    const-string v0, "%"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 757
    const/4 v0, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 758
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    const/high16 v1, 0x437f0000    # 255.0f

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 760
    :goto_0
    return v0

    :cond_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public final a(Ljava/lang/String;F)F
    .locals 1

    .prologue
    .line 794
    invoke-virtual {p0, p1}, Lfy$d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 795
    if-nez v0, :cond_0

    .line 801
    :goto_0
    return p2

    .line 799
    :cond_0
    :try_start_0
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result p2

    goto :goto_0

    .line 801
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 737
    const/4 v0, 0x0

    .line 738
    iget-object v1, p0, Lfy$d;->a:Lfy$f;

    if-eqz v1, :cond_0

    .line 739
    iget-object v0, p0, Lfy$d;->a:Lfy$f;

    iget-object v0, v0, Lfy$f;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 741
    :cond_0
    if-nez v0, :cond_1

    .line 742
    iget-object v0, p0, Lfy$d;->b:Lorg/xml/sax/Attributes;

    invoke-static {p1, v0}, Lfy;->a(Ljava/lang/String;Lorg/xml/sax/Attributes;)Ljava/lang/String;

    move-result-object v0

    .line 744
    :cond_1
    return-object v0
.end method

.method public final c(Ljava/lang/String;)Ljava/lang/Float;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 807
    invoke-virtual {p0, p1}, Lfy$d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 808
    if-nez v1, :cond_0

    .line 814
    :goto_0
    return-object v0

    .line 812
    :cond_0
    :try_start_0
    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 814
    :catch_0
    move-exception v1

    goto :goto_0
.end method
