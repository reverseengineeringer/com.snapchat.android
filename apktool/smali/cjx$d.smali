.class final Lcjx$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcjy;
.implements Lcka;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcjx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "d"
.end annotation


# instance fields
.field protected a:I

.field protected b:I

.field private final c:Lcgi;


# direct methods
.method protected constructor <init>(Lcgi;II)V
    .locals 1

    .prologue
    const/16 v0, 0x12

    .line 1895
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1896
    iput-object p1, p0, Lcjx$d;->c:Lcgi;

    .line 1898
    if-le p3, v0, :cond_0

    move p3, v0

    .line 1901
    :cond_0
    iput p2, p0, Lcjx$d;->a:I

    .line 1902
    iput p3, p0, Lcjx$d;->b:I

    .line 1903
    return-void
.end method

.method private a(Ljava/lang/StringBuffer;JLcgf;)V
    .locals 14

    .prologue
    .line 1946
    iget-object v2, p0, Lcjx$d;->c:Lcgi;

    move-object/from16 v0, p4

    invoke-virtual {v2, v0}, Lcgi;->a(Lcgf;)Lcgh;

    move-result-object v2

    .line 1947
    iget v4, p0, Lcjx$d;->a:I

    .line 1951
    :try_start_0
    move-wide/from16 v0, p2

    invoke-virtual {v2, v0, v1}, Lcgh;->i(J)J
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v6

    .line 1961
    const-wide/16 v8, 0x0

    cmp-long v3, v6, v8

    if-nez v3, :cond_3

    .line 1962
    if-eqz p1, :cond_2

    .line 1963
    :goto_0
    add-int/lit8 v4, v4, -0x1

    if-ltz v4, :cond_0

    .line 1964
    const/16 v2, 0x30

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 1953
    :catch_0
    move-exception v2

    if-eqz p1, :cond_1

    .line 1954
    invoke-static {p1, v4}, Lcjx;->a(Ljava/lang/StringBuffer;I)V

    .line 2025
    :cond_0
    :goto_1
    return-void

    .line 1956
    :cond_1
    :goto_2
    add-int/lit8 v4, v4, -0x1

    if-ltz v4, :cond_0

    const/4 v2, 0x0

    const v3, 0xfffd

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(I)V

    goto :goto_2

    .line 1967
    :cond_2
    :goto_3
    add-int/lit8 v4, v4, -0x1

    if-ltz v4, :cond_0

    .line 1968
    const/4 v2, 0x0

    const/16 v3, 0x30

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(I)V

    goto :goto_3

    .line 1975
    :cond_3
    invoke-virtual {v2}, Lcgh;->d()Lcgm;

    move-result-object v2

    invoke-virtual {v2}, Lcgm;->d()J

    move-result-wide v8

    iget v2, p0, Lcjx$d;->b:I

    move v5, v2

    :goto_4
    packed-switch v5, :pswitch_data_0

    const-wide/16 v2, 0x1

    :goto_5
    mul-long v10, v8, v2

    div-long/2addr v10, v2

    cmp-long v10, v10, v8

    if-eqz v10, :cond_4

    add-int/lit8 v2, v5, -0x1

    move v5, v2

    goto :goto_4

    :pswitch_0
    const-wide/16 v2, 0xa

    goto :goto_5

    :pswitch_1
    const-wide/16 v2, 0x64

    goto :goto_5

    :pswitch_2
    const-wide/16 v2, 0x3e8

    goto :goto_5

    :pswitch_3
    const-wide/16 v2, 0x2710

    goto :goto_5

    :pswitch_4
    const-wide/32 v2, 0x186a0

    goto :goto_5

    :pswitch_5
    const-wide/32 v2, 0xf4240

    goto :goto_5

    :pswitch_6
    const-wide/32 v2, 0x989680

    goto :goto_5

    :pswitch_7
    const-wide/32 v2, 0x5f5e100

    goto :goto_5

    :pswitch_8
    const-wide/32 v2, 0x3b9aca00

    goto :goto_5

    :pswitch_9
    const-wide v2, 0x2540be400L

    goto :goto_5

    :pswitch_a
    const-wide v2, 0x174876e800L

    goto :goto_5

    :pswitch_b
    const-wide v2, 0xe8d4a51000L

    goto :goto_5

    :pswitch_c
    const-wide v2, 0x9184e72a000L

    goto :goto_5

    :pswitch_d
    const-wide v2, 0x5af3107a4000L

    goto :goto_5

    :pswitch_e
    const-wide v2, 0x38d7ea4c68000L

    goto :goto_5

    :pswitch_f
    const-wide v2, 0x2386f26fc10000L

    goto :goto_5

    :pswitch_10
    const-wide v2, 0x16345785d8a0000L

    goto :goto_5

    :pswitch_11
    const-wide v2, 0xde0b6b3a7640000L

    goto :goto_5

    :cond_4
    const/4 v10, 0x2

    new-array v10, v10, [J

    const/4 v11, 0x0

    mul-long/2addr v2, v6

    div-long/2addr v2, v8

    aput-wide v2, v10, v11

    const/4 v2, 0x1

    int-to-long v6, v5

    aput-wide v6, v10, v2

    .line 1976
    const/4 v2, 0x0

    aget-wide v2, v10, v2

    .line 1977
    const/4 v5, 0x1

    aget-wide v6, v10, v5

    long-to-int v5, v6

    .line 1979
    const-wide/32 v6, 0x7fffffff

    and-long/2addr v6, v2

    cmp-long v6, v6, v2

    if-nez v6, :cond_5

    .line 1980
    long-to-int v2, v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    .line 1985
    :goto_6
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    move v6, v4

    move v4, v5

    .line 1986
    :goto_7
    if-ge v3, v4, :cond_7

    .line 1988
    if-eqz p1, :cond_6

    .line 1989
    const/16 v5, 0x30

    invoke-virtual {p1, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1993
    :goto_8
    add-int/lit8 v5, v6, -0x1

    .line 1994
    add-int/lit8 v4, v4, -0x1

    move v6, v5

    goto :goto_7

    .line 1982
    :cond_5
    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    goto :goto_6

    .line 1991
    :cond_6
    const/4 v5, 0x0

    const/16 v7, 0x30

    invoke-virtual {v5, v7}, Ljava/io/Writer;->write(I)V

    goto :goto_8

    .line 1997
    :cond_7
    if-ge v6, v4, :cond_a

    move v12, v3

    move v3, v4

    move v4, v12

    .line 1999
    :goto_9
    if-ge v6, v3, :cond_8

    .line 2000
    const/4 v5, 0x1

    if-le v4, v5, :cond_8

    add-int/lit8 v5, v4, -0x1

    invoke-virtual {v2, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v7, 0x30

    if-ne v5, v7, :cond_8

    .line 2001
    add-int/lit8 v5, v3, -0x1

    .line 2004
    add-int/lit8 v3, v4, -0x1

    move v4, v3

    move v3, v5

    goto :goto_9

    .line 2006
    :cond_8
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v4, v3, :cond_a

    .line 2007
    if-eqz p1, :cond_9

    .line 2008
    const/4 v3, 0x0

    :goto_a
    if-ge v3, v4, :cond_0

    .line 2009
    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {p1, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 2008
    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    .line 2012
    :cond_9
    const/4 v3, 0x0

    :goto_b
    if-ge v3, v4, :cond_0

    .line 2013
    const/4 v5, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-virtual {v5, v6}, Ljava/io/Writer;->write(I)V

    .line 2012
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    .line 2020
    :cond_a
    if-eqz p1, :cond_b

    .line 2021
    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_1

    .line 2023
    :cond_b
    const/4 v3, 0x0

    invoke-virtual {v3, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1975
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
    .end packed-switch
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 1906
    iget v0, p0, Lcjx$d;->b:I

    return v0
.end method

.method public final a(Lcjz;Ljava/lang/String;I)I
    .locals 12

    .prologue
    const-wide/16 v10, 0xa

    .line 2068
    iget-object v0, p0, Lcjx$d;->c:Lcgi;

    iget-object v1, p1, Lcjz;->a:Lcgf;

    invoke-virtual {v0, v1}, Lcgi;->a(Lcgf;)Lcgh;

    move-result-object v1

    .line 2070
    iget v0, p0, Lcjx$d;->b:I

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, p3

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 2072
    const-wide/16 v4, 0x0

    .line 2073
    invoke-virtual {v1}, Lcgh;->d()Lcgm;

    move-result-object v0

    invoke-virtual {v0}, Lcgm;->d()J

    move-result-wide v2

    mul-long/2addr v2, v10

    .line 2074
    const/4 v0, 0x0

    .line 2075
    :goto_0
    if-ge v0, v6, :cond_0

    .line 2076
    add-int v7, p3, v0

    invoke-virtual {p2, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    .line 2077
    const/16 v8, 0x30

    if-lt v7, v8, :cond_0

    const/16 v8, 0x39

    if-gt v7, v8, :cond_0

    .line 2078
    add-int/lit8 v0, v0, 0x1

    .line 2081
    div-long/2addr v2, v10

    .line 2082
    add-int/lit8 v7, v7, -0x30

    int-to-long v8, v7

    mul-long/2addr v8, v2

    add-long/2addr v4, v8

    .line 2084
    goto :goto_0

    .line 2086
    :cond_0
    div-long v2, v4, v10

    .line 2088
    if-nez v0, :cond_1

    .line 2089
    xor-int/lit8 v0, p3, -0x1

    .line 2103
    :goto_1
    return v0

    .line 2092
    :cond_1
    const-wide/32 v4, 0x7fffffff

    cmp-long v4, v2, v4

    if-lez v4, :cond_2

    .line 2093
    xor-int/lit8 v0, p3, -0x1

    goto :goto_1

    .line 2096
    :cond_2
    new-instance v4, Lcjl;

    invoke-static {}, Lcgi;->a()Lcgi;

    move-result-object v5

    sget-object v6, Lcjj;->a:Lcgm;

    invoke-virtual {v1}, Lcgh;->d()Lcgm;

    move-result-object v1

    invoke-direct {v4, v5, v6, v1}, Lcjl;-><init>(Lcgi;Lcgm;Lcgm;)V

    .line 2101
    long-to-int v1, v2

    new-instance v2, Lcjz$a;

    invoke-direct {v2, v4, v1}, Lcjz$a;-><init>(Lcgh;I)V

    invoke-virtual {p1, v2}, Lcjz;->a(Lcjz$a;)V

    .line 2103
    add-int/2addr v0, p3

    goto :goto_1
.end method

.method public final a(Ljava/lang/StringBuffer;JLcgf;ILcgk;Ljava/util/Locale;)V
    .locals 2

    .prologue
    .line 1913
    :try_start_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcjx$d;->a(Ljava/lang/StringBuffer;JLcgf;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1917
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public final a(Ljava/lang/StringBuffer;Lchb;Ljava/util/Locale;)V
    .locals 4

    .prologue
    .line 1928
    invoke-interface {p2}, Lchb;->b()Lcgf;

    move-result-object v0

    const-wide/16 v2, 0x0

    invoke-virtual {v0, p2, v2, v3}, Lcgf;->a(Lchb;J)J

    move-result-wide v0

    .line 1930
    :try_start_0
    invoke-interface {p2}, Lchb;->b()Lcgf;

    move-result-object v2

    invoke-direct {p0, p1, v0, v1, v2}, Lcjx$d;->a(Ljava/lang/StringBuffer;JLcgf;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1934
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public final b()I
    .locals 1

    .prologue
    .line 2064
    iget v0, p0, Lcjx$d;->b:I

    return v0
.end method
