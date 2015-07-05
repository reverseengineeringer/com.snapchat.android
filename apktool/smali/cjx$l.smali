.class final Lcjx$l;
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
    name = "l"
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:Z

.field private final d:I

.field private final e:I


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;ZI)V
    .locals 1

    .prologue
    const/4 v0, 0x2

    .line 2121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2122
    iput-object p1, p0, Lcjx$l;->a:Ljava/lang/String;

    .line 2123
    iput-object p2, p0, Lcjx$l;->b:Ljava/lang/String;

    .line 2124
    iput-boolean p3, p0, Lcjx$l;->c:Z

    .line 2125
    if-ge p4, v0, :cond_0

    .line 2126
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 2128
    :cond_0
    iput v0, p0, Lcjx$l;->d:I

    .line 2133
    iput p4, p0, Lcjx$l;->e:I

    .line 2134
    return-void
.end method

.method private static a(Ljava/lang/String;II)I
    .locals 4

    .prologue
    .line 2453
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, p1

    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 2454
    const/4 v1, 0x0

    .line 2455
    :goto_0
    if-lez v0, :cond_0

    .line 2456
    add-int v2, p1, v1

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 2457
    const/16 v3, 0x30

    if-lt v2, v3, :cond_0

    const/16 v3, 0x39

    if-gt v2, v3, :cond_0

    .line 2458
    add-int/lit8 v1, v1, 0x1

    .line 2455
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 2462
    :cond_0
    return v1
.end method


# virtual methods
.method public final a()I
    .locals 2

    .prologue
    .line 2137
    iget v0, p0, Lcjx$l;->d:I

    add-int/lit8 v0, v0, 0x1

    shl-int/lit8 v0, v0, 0x1

    .line 2138
    iget-boolean v1, p0, Lcjx$l;->c:Z

    if-eqz v1, :cond_0

    .line 2139
    iget v1, p0, Lcjx$l;->d:I

    add-int/lit8 v1, v1, -0x1

    add-int/2addr v0, v1

    .line 2141
    :cond_0
    iget-object v1, p0, Lcjx$l;->a:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcjx$l;->a:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v0, :cond_1

    .line 2142
    iget-object v0, p0, Lcjx$l;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    .line 2144
    :cond_1
    return v0
.end method

.method public final a(Lcjz;Ljava/lang/String;I)I
    .locals 10

    .prologue
    const/16 v9, 0x2d

    const/16 v7, 0x2b

    const/4 v1, 0x1

    const/4 v4, 0x0

    const/4 v8, 0x2

    .line 2278
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    sub-int v6, v0, p3

    .line 2281
    iget-object v0, p0, Lcjx$l;->b:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 2282
    iget-object v0, p0, Lcjx$l;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 2284
    if-lez v6, :cond_0

    .line 2285
    invoke-virtual {p2, p3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 2286
    if-eq v0, v9, :cond_2

    if-eq v0, v7, :cond_2

    .line 2287
    :cond_0
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcjz;->a(Ljava/lang/Integer;)V

    .line 2445
    :goto_0
    return p3

    .line 2293
    :cond_1
    iget-object v3, p0, Lcjx$l;->b:Ljava/lang/String;

    iget-object v0, p0, Lcjx$l;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    move-object v0, p2

    move v2, p3

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2294
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcjz;->a(Ljava/lang/Integer;)V

    .line 2295
    iget-object v0, p0, Lcjx$l;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr p3, v0

    goto :goto_0

    .line 2301
    :cond_2
    if-gt v6, v1, :cond_3

    .line 2302
    xor-int/lit8 p3, p3, -0x1

    goto :goto_0

    .line 2306
    :cond_3
    invoke-virtual {p2, p3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 2307
    if-ne v0, v9, :cond_4

    move v0, v1

    .line 2315
    :goto_1
    add-int/lit8 v2, v6, -0x1

    .line 2316
    add-int/lit8 v3, p3, 0x1

    .line 2330
    invoke-static {p2, v3, v8}, Lcjx$l;->a(Ljava/lang/String;II)I

    move-result v5

    if-ge v5, v8, :cond_6

    .line 2332
    xor-int/lit8 p3, v3, -0x1

    goto :goto_0

    .line 2309
    :cond_4
    if-ne v0, v7, :cond_5

    move v0, v4

    .line 2310
    goto :goto_1

    .line 2312
    :cond_5
    xor-int/lit8 p3, p3, -0x1

    goto :goto_0

    .line 2337
    :cond_6
    invoke-static {p2, v3}, Lckb;->a(Ljava/lang/String;I)I

    move-result v5

    .line 2338
    const/16 v6, 0x17

    if-le v5, v6, :cond_7

    .line 2339
    xor-int/lit8 p3, v3, -0x1

    goto :goto_0

    .line 2341
    :cond_7
    const v6, 0x36ee80

    mul-int/2addr v5, v6

    .line 2342
    add-int/lit8 v2, v2, -0x2

    .line 2343
    add-int/lit8 v3, v3, 0x2

    .line 2349
    if-lez v2, :cond_b

    .line 2350
    invoke-virtual {p2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 2355
    const/16 v7, 0x3a

    if-ne v6, v7, :cond_a

    .line 2357
    add-int/lit8 v2, v2, -0x1

    .line 2358
    add-int/lit8 v3, v3, 0x1

    move v4, v1

    .line 2367
    :cond_8
    invoke-static {p2, v3, v8}, Lcjx$l;->a(Ljava/lang/String;II)I

    move-result v6

    .line 2368
    if-nez v6, :cond_9

    if-eqz v4, :cond_b

    .line 2369
    :cond_9
    if-ge v6, v8, :cond_d

    .line 2372
    xor-int/lit8 p3, v3, -0x1

    goto :goto_0

    .line 2359
    :cond_a
    const/16 v7, 0x30

    if-lt v6, v7, :cond_b

    const/16 v7, 0x39

    if-le v6, v7, :cond_8

    :cond_b
    move v1, v5

    move p3, v3

    .line 2444
    :cond_c
    :goto_2
    if-eqz v0, :cond_17

    neg-int v0, v1

    :goto_3
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcjz;->a(Ljava/lang/Integer;)V

    goto/16 :goto_0

    .line 2375
    :cond_d
    invoke-static {p2, v3}, Lckb;->a(Ljava/lang/String;I)I

    move-result v6

    .line 2376
    const/16 v7, 0x3b

    if-le v6, v7, :cond_e

    .line 2377
    xor-int/lit8 p3, v3, -0x1

    goto/16 :goto_0

    .line 2379
    :cond_e
    const v7, 0xea60

    mul-int/2addr v6, v7

    add-int/2addr v5, v6

    .line 2380
    add-int/lit8 v2, v2, -0x2

    .line 2381
    add-int/lit8 v3, v3, 0x2

    .line 2385
    if-lez v2, :cond_b

    .line 2386
    if-eqz v4, :cond_f

    .line 2390
    invoke-virtual {p2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x3a

    if-ne v6, v7, :cond_b

    .line 2391
    add-int/lit8 v2, v2, -0x1

    .line 2394
    add-int/lit8 v3, v3, 0x1

    .line 2397
    :cond_f
    invoke-static {p2, v3, v8}, Lcjx$l;->a(Ljava/lang/String;II)I

    move-result v6

    .line 2398
    if-nez v6, :cond_10

    if-eqz v4, :cond_b

    .line 2399
    :cond_10
    if-ge v6, v8, :cond_11

    .line 2402
    xor-int/lit8 p3, v3, -0x1

    goto/16 :goto_0

    .line 2405
    :cond_11
    invoke-static {p2, v3}, Lckb;->a(Ljava/lang/String;I)I

    move-result v6

    .line 2406
    const/16 v7, 0x3b

    if-le v6, v7, :cond_12

    .line 2407
    xor-int/lit8 p3, v3, -0x1

    goto/16 :goto_0

    .line 2409
    :cond_12
    mul-int/lit16 v6, v6, 0x3e8

    add-int/2addr v5, v6

    .line 2410
    add-int/lit8 v6, v2, -0x2

    .line 2411
    add-int/lit8 v2, v3, 0x2

    .line 2415
    if-lez v6, :cond_19

    .line 2416
    if-eqz v4, :cond_14

    .line 2420
    invoke-virtual {p2, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v6, 0x2e

    if-eq v3, v6, :cond_13

    invoke-virtual {p2, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v6, 0x2c

    if-ne v3, v6, :cond_19

    .line 2421
    :cond_13
    add-int/lit8 v2, v2, 0x1

    .line 2427
    :cond_14
    const/4 v3, 0x3

    invoke-static {p2, v2, v3}, Lcjx$l;->a(Ljava/lang/String;II)I

    move-result v6

    .line 2428
    if-nez v6, :cond_15

    if-eqz v4, :cond_19

    .line 2429
    :cond_15
    if-gtz v6, :cond_16

    .line 2432
    xor-int/lit8 p3, v2, -0x1

    goto/16 :goto_0

    .line 2435
    :cond_16
    add-int/lit8 v3, v2, 0x1

    invoke-virtual {p2, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    add-int/lit8 v2, v2, -0x30

    mul-int/lit8 v2, v2, 0x64

    add-int/2addr v2, v5

    .line 2436
    if-le v6, v1, :cond_18

    .line 2437
    add-int/lit8 p3, v3, 0x1

    invoke-virtual {p2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    add-int/lit8 v1, v1, -0x30

    mul-int/lit8 v1, v1, 0xa

    add-int/2addr v1, v2

    .line 2438
    if-le v6, v8, :cond_c

    .line 2439
    add-int/lit8 v3, p3, 0x1

    invoke-virtual {p2, p3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    add-int/lit8 v2, v2, -0x30

    add-int/2addr v1, v2

    move p3, v3

    goto/16 :goto_2

    :cond_17
    move v0, v1

    .line 2444
    goto/16 :goto_3

    :cond_18
    move v1, v2

    move p3, v3

    goto/16 :goto_2

    :cond_19
    move v1, v5

    move p3, v2

    goto/16 :goto_2
.end method

.method public final a(Ljava/lang/StringBuffer;JLcgf;ILcgk;Ljava/util/Locale;)V
    .locals 7

    .prologue
    const v6, 0xea60

    const/16 v5, 0x3a

    const/4 v2, 0x1

    const/4 v4, 0x3

    const/4 v3, 0x2

    .line 2150
    if-nez p6, :cond_1

    .line 2204
    :cond_0
    :goto_0
    return-void

    .line 2153
    :cond_1
    if-nez p5, :cond_2

    iget-object v0, p0, Lcjx$l;->a:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 2154
    iget-object v0, p0, Lcjx$l;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 2157
    :cond_2
    if-ltz p5, :cond_9

    .line 2158
    const/16 v0, 0x2b

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 2164
    :goto_1
    const v0, 0x36ee80

    div-int v0, p5, v0

    .line 2165
    invoke-static {p1, v0, v3}, Lckb;->a(Ljava/lang/StringBuffer;II)V

    .line 2166
    iget v1, p0, Lcjx$l;->e:I

    if-eq v1, v2, :cond_0

    .line 2169
    const v1, 0x36ee80

    mul-int/2addr v0, v1

    sub-int v0, p5, v0

    .line 2170
    if-nez v0, :cond_3

    iget v1, p0, Lcjx$l;->d:I

    if-le v1, v2, :cond_0

    .line 2174
    :cond_3
    div-int v1, v0, v6

    .line 2175
    iget-boolean v2, p0, Lcjx$l;->c:Z

    if-eqz v2, :cond_4

    .line 2176
    invoke-virtual {p1, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 2178
    :cond_4
    invoke-static {p1, v1, v3}, Lckb;->a(Ljava/lang/StringBuffer;II)V

    .line 2179
    iget v2, p0, Lcjx$l;->e:I

    if-eq v2, v3, :cond_0

    .line 2182
    mul-int/2addr v1, v6

    sub-int/2addr v0, v1

    .line 2183
    if-nez v0, :cond_5

    iget v1, p0, Lcjx$l;->d:I

    if-le v1, v3, :cond_0

    .line 2187
    :cond_5
    div-int/lit16 v1, v0, 0x3e8

    .line 2188
    iget-boolean v2, p0, Lcjx$l;->c:Z

    if-eqz v2, :cond_6

    .line 2189
    invoke-virtual {p1, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 2191
    :cond_6
    invoke-static {p1, v1, v3}, Lckb;->a(Ljava/lang/StringBuffer;II)V

    .line 2192
    iget v2, p0, Lcjx$l;->e:I

    if-eq v2, v4, :cond_0

    .line 2195
    mul-int/lit16 v1, v1, 0x3e8

    sub-int/2addr v0, v1

    .line 2196
    if-nez v0, :cond_7

    iget v1, p0, Lcjx$l;->d:I

    if-le v1, v4, :cond_0

    .line 2200
    :cond_7
    iget-boolean v1, p0, Lcjx$l;->c:Z

    if-eqz v1, :cond_8

    .line 2201
    const/16 v1, 0x2e

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 2203
    :cond_8
    invoke-static {p1, v0, v4}, Lckb;->a(Ljava/lang/StringBuffer;II)V

    goto :goto_0

    .line 2160
    :cond_9
    const/16 v0, 0x2d

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 2161
    neg-int p5, p5

    goto :goto_1
.end method

.method public final a(Ljava/lang/StringBuffer;Lchb;Ljava/util/Locale;)V
    .locals 0

    .prologue
    .line 2267
    return-void
.end method

.method public final b()I
    .locals 1

    .prologue
    .line 2274
    invoke-virtual {p0}, Lcjx$l;->a()I

    move-result v0

    return v0
.end method
