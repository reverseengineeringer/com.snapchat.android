.class public abstract Lchf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lchb;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lchb;",
        "Ljava/lang/Comparable",
        "<",
        "Lchb;",
        ">;"
    }
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    return-void
.end method

.method private c(Lcgi;)I
    .locals 3

    .prologue
    .line 170
    const/4 v0, 0x0

    invoke-virtual {p0}, Lchf;->a()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_1

    .line 171
    invoke-virtual {p0, v0}, Lchf;->c(I)Lcgi;

    move-result-object v2

    if-ne v2, p1, :cond_0

    .line 175
    :goto_1
    return v0

    .line 170
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 175
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method


# virtual methods
.method public a(Lcgi;)I
    .locals 3

    .prologue
    .line 150
    invoke-direct {p0, p1}, Lchf;->c(Lcgi;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Field \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' is not supported"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p0, v0}, Lchf;->a(I)I

    move-result v0

    return v0
.end method

.method public a(Lchb;)I
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 311
    if-ne p0, p1, :cond_1

    .line 331
    :cond_0
    :goto_0
    return v0

    .line 314
    :cond_1
    invoke-virtual {p0}, Lchf;->a()I

    move-result v1

    invoke-interface {p1}, Lchb;->a()I

    move-result v2

    if-eq v1, v2, :cond_2

    .line 315
    new-instance v0, Ljava/lang/ClassCastException;

    const-string v1, "ReadablePartial objects must have matching field types"

    invoke-direct {v0, v1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 317
    :cond_2
    invoke-virtual {p0}, Lchf;->a()I

    move-result v2

    move v1, v0

    :goto_1
    if-ge v1, v2, :cond_4

    .line 318
    invoke-virtual {p0, v1}, Lchf;->c(I)Lcgi;

    move-result-object v3

    invoke-interface {p1, v1}, Lchb;->c(I)Lcgi;

    move-result-object v4

    if-eq v3, v4, :cond_3

    .line 319
    new-instance v0, Ljava/lang/ClassCastException;

    const-string v1, "ReadablePartial objects must have matching field types"

    invoke-direct {v0, v1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 317
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 323
    :cond_4
    invoke-virtual {p0}, Lchf;->a()I

    move-result v2

    move v1, v0

    :goto_2
    if-ge v1, v2, :cond_0

    .line 324
    invoke-virtual {p0, v1}, Lchf;->a(I)I

    move-result v3

    invoke-interface {p1, v1}, Lchb;->a(I)I

    move-result v4

    if-le v3, v4, :cond_5

    .line 325
    const/4 v0, 0x1

    goto :goto_0

    .line 327
    :cond_5
    invoke-virtual {p0, v1}, Lchf;->a(I)I

    move-result v3

    invoke-interface {p1, v1}, Lchb;->a(I)I

    move-result v4

    if-ge v3, v4, :cond_6

    .line 328
    const/4 v0, -0x1

    goto :goto_0

    .line 323
    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_2
.end method

.method public abstract a(ILcgf;)Lcgh;
.end method

.method public b(Lcgi;)Z
    .locals 2

    .prologue
    .line 160
    invoke-direct {p0, p1}, Lchf;->c(Lcgi;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b(Lchb;)Z
    .locals 2

    .prologue
    .line 350
    if-nez p1, :cond_0

    .line 351
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Partial cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 353
    :cond_0
    invoke-virtual {p0, p1}, Lchf;->a(Lchb;)I

    move-result v0

    if-lez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final c(I)Lcgi;
    .locals 1

    .prologue
    .line 79
    invoke-virtual {p0}, Lchf;->b()Lcgf;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lchf;->a(ILcgf;)Lcgh;

    move-result-object v0

    invoke-virtual {v0}, Lcgh;->a()Lcgi;

    move-result-object v0

    return-object v0
.end method

.method public final c(Lchb;)Z
    .locals 2

    .prologue
    .line 372
    if-nez p1, :cond_0

    .line 373
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Partial cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 375
    :cond_0
    invoke-virtual {p0, p1}, Lchf;->a(Lchb;)I

    move-result v0

    if-gez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 46
    check-cast p1, Lchb;

    invoke-virtual {p0, p1}, Lchf;->a(Lchb;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 255
    if-ne p0, p1, :cond_1

    .line 256
    const/4 v0, 0x1

    .line 270
    :cond_0
    :goto_0
    return v0

    .line 258
    :cond_1
    instance-of v1, p1, Lchb;

    if-eqz v1, :cond_0

    .line 261
    check-cast p1, Lchb;

    .line 262
    invoke-virtual {p0}, Lchf;->a()I

    move-result v1

    invoke-interface {p1}, Lchb;->a()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 265
    invoke-virtual {p0}, Lchf;->a()I

    move-result v2

    move v1, v0

    :goto_1
    if-ge v1, v2, :cond_2

    .line 266
    invoke-virtual {p0, v1}, Lchf;->a(I)I

    move-result v3

    invoke-interface {p1, v1}, Lchb;->a(I)I

    move-result v4

    if-ne v3, v4, :cond_0

    invoke-virtual {p0, v1}, Lchf;->c(I)Lcgi;

    move-result-object v3

    invoke-interface {p1, v1}, Lchb;->c(I)Lcgi;

    move-result-object v4

    if-ne v3, v4, :cond_0

    .line 265
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 270
    :cond_2
    invoke-virtual {p0}, Lchf;->b()Lcgf;

    move-result-object v0

    invoke-interface {p1}, Lchb;->b()Lcgf;

    move-result-object v1

    invoke-static {v0, v1}, Lcjh;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 280
    const/16 v1, 0x9d

    .line 281
    const/4 v0, 0x0

    invoke-virtual {p0}, Lchf;->a()I

    move-result v2

    :goto_0
    if-ge v0, v2, :cond_0

    .line 282
    mul-int/lit8 v1, v1, 0x17

    invoke-virtual {p0, v0}, Lchf;->a(I)I

    move-result v3

    add-int/2addr v1, v3

    .line 283
    mul-int/lit8 v1, v1, 0x17

    invoke-virtual {p0, v0}, Lchf;->c(I)Lcgi;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    add-int/2addr v1, v3

    .line 281
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 285
    :cond_0
    invoke-virtual {p0}, Lchf;->b()Lcgf;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v0, v1

    .line 286
    return v0
.end method
