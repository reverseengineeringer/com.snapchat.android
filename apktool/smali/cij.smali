.class public abstract Lcij;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcid;
.implements Ljava/io/Serializable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcid;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Comparable",
        "<",
        "Lcij;",
        ">;"
    }
.end annotation


# instance fields
.field public volatile k:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .prologue
    .line 157
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 158
    iput p1, p0, Lcij;->k:I

    .line 159
    return-void
.end method


# virtual methods
.method public abstract a()Lcho;
.end method

.method public abstract b()Lchv;
.end method

.method public final c()I
    .locals 1

    .prologue
    .line 233
    iget v0, p0, Lcij;->k:I

    return v0
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 3

    .prologue
    .line 46
    check-cast p1, Lcij;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/ClassCastException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " cannot be compared to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget v0, p1, Lcij;->k:I

    iget v1, p0, Lcij;->k:I

    if-le v1, v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    if-ge v1, v0, :cond_2

    const/4 v0, -0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 301
    if-ne p0, p1, :cond_1

    .line 308
    :cond_0
    :goto_0
    return v0

    .line 304
    :cond_1
    instance-of v2, p1, Lcid;

    if-nez v2, :cond_2

    move v0, v1

    .line 305
    goto :goto_0

    .line 307
    :cond_2
    check-cast p1, Lcid;

    .line 308
    invoke-interface {p1}, Lcid;->b()Lchv;

    move-result-object v2

    invoke-virtual {p0}, Lcij;->b()Lchv;

    move-result-object v3

    if-ne v2, v3, :cond_3

    invoke-interface {p1}, Lcid;->c()I

    move-result v2

    iget v3, p0, Lcij;->k:I

    if-eq v2, v3, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 317
    iget v0, p0, Lcij;->k:I

    add-int/lit16 v0, v0, 0x1cb

    .line 319
    mul-int/lit8 v0, v0, 0x1b

    invoke-virtual {p0}, Lcij;->a()Lcho;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 320
    return v0
.end method
