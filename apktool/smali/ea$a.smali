.class final Lea$a;
.super Lcg;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lea;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# instance fields
.field final q:[C

.field final r:I

.field final s:I

.field final t:I

.field final u:I

.field private final v:Ljava/lang/String;

.field private final w:[B

.field private final x:[Z


# direct methods
.method constructor <init>(Ljava/lang/String;[C)V
    .locals 10

    .prologue
    const/16 v4, 0x8

    const/4 v9, -0x1

    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 457
    invoke-direct {p0}, Lcg;-><init>()V

    .line 458
    invoke-static {p1}, Lck;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lea$a;->v:Ljava/lang/String;

    .line 459
    invoke-static {p2}, Lck;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [C

    iput-object v0, p0, Lea$a;->q:[C

    .line 461
    :try_start_0
    array-length v0, p2

    sget-object v2, Ljava/math/RoundingMode;->UNNECESSARY:Ljava/math/RoundingMode;

    invoke-static {v0, v2}, Led;->a(ILjava/math/RoundingMode;)I

    move-result v0

    iput v0, p0, Lea$a;->s:I
    :try_end_0
    .catch Ljava/lang/ArithmeticException; {:try_start_0 .. :try_end_0} :catch_0

    .line 470
    iget v0, p0, Lea$a;->s:I

    invoke-static {v0}, Ljava/lang/Integer;->lowestOneBit(I)I

    move-result v0

    invoke-static {v4, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 471
    div-int v2, v4, v0

    iput v2, p0, Lea$a;->t:I

    .line 472
    iget v2, p0, Lea$a;->s:I

    div-int v0, v2, v0

    iput v0, p0, Lea$a;->u:I

    .line 474
    array-length v0, p2

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lea$a;->r:I

    .line 476
    const/16 v0, 0x80

    new-array v4, v0, [B

    .line 477
    invoke-static {v4, v9}, Ljava/util/Arrays;->fill([BB)V

    move v0, v1

    .line 478
    :goto_0
    array-length v2, p2

    if-ge v0, v2, :cond_1

    .line 479
    aget-char v5, p2, v0

    .line 480
    sget-object v2, Lcg;->b:Lcg;

    invoke-virtual {v2, v5}, Lcg;->a(C)Z

    move-result v2

    const-string v6, "Non-ASCII character: %s"

    new-array v7, v3, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v8

    aput-object v8, v7, v1

    invoke-static {v2, v6, v7}, Lck;->a(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 481
    aget-byte v2, v4, v5

    if-ne v2, v9, :cond_0

    move v2, v3

    :goto_1
    const-string v6, "Duplicate character: %s"

    new-array v7, v3, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v8

    aput-object v8, v7, v1

    invoke-static {v2, v6, v7}, Lck;->a(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 482
    int-to-byte v2, v0

    aput-byte v2, v4, v5

    .line 478
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 462
    :catch_0
    move-exception v0

    .line 463
    new-instance v1, Ljava/lang/IllegalArgumentException;

    array-length v2, p2

    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v4, 0x23

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Illegal alphabet length "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_0
    move v2, v1

    .line 481
    goto :goto_1

    .line 484
    :cond_1
    iput-object v4, p0, Lea$a;->w:[B

    .line 486
    iget v0, p0, Lea$a;->t:I

    new-array v0, v0, [Z

    .line 487
    :goto_2
    iget v2, p0, Lea$a;->u:I

    if-ge v1, v2, :cond_2

    .line 488
    mul-int/lit8 v2, v1, 0x8

    iget v4, p0, Lea$a;->s:I

    sget-object v5, Ljava/math/RoundingMode;->CEILING:Ljava/math/RoundingMode;

    invoke-static {v2, v4, v5}, Led;->a(IILjava/math/RoundingMode;)I

    move-result v2

    aput-boolean v3, v0, v2

    .line 487
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 490
    :cond_2
    iput-object v0, p0, Lea$a;->x:[Z

    .line 491
    return-void
.end method


# virtual methods
.method public final a(C)Z
    .locals 2

    .prologue
    .line 554
    sget-object v0, Lcg;->b:Lcg;

    invoke-virtual {v0, p1}, Lcg;->a(C)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lea$a;->w:[B

    aget-byte v0, v0, p1

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 559
    iget-object v0, p0, Lea$a;->v:Ljava/lang/String;

    return-object v0
.end method
