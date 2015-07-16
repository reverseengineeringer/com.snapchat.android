.class public abstract Lamo;
.super Lamn;
.source "SourceFile"


# instance fields
.field private final c:Laka;


# direct methods
.method public constructor <init>(Laka;Laxn;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0, p2, p3}, Lamn;-><init>(Laxn;Ljava/lang/String;)V

    .line 29
    invoke-static {p1}, Lco;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laka;

    iput-object v0, p0, Lamo;->c:Laka;

    .line 30
    return-void
.end method


# virtual methods
.method protected final a(Lbgl;)V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 42
    invoke-static {p1}, Lco;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    iget v0, p1, Lbgl;->mSize:I

    if-lez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Lco;->a(Z)V

    .line 47
    if-eqz p1, :cond_1

    iget v0, p1, Lbgl;->mSize:I

    if-lez v0, :cond_1

    .line 48
    iget v0, p1, Lbgl;->mSize:I

    new-array v0, v0, [B

    .line 49
    iget-object v3, p1, Lbgl;->mBuffer:[B

    iget v4, p1, Lbgl;->mSize:I

    invoke-static {v3, v2, v0, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 54
    iget-object v3, p0, Lamo;->c:Laka;

    invoke-virtual {v3}, Laka;->L()Laza;

    move-result-object v3

    .line 55
    iget-object v4, p0, Lamo;->c:Laka;

    invoke-virtual {v4}, Laka;->d()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v0, v4}, Laza;->a([BLjava/lang/String;)[B

    move-result-object v0

    .line 56
    if-nez v0, :cond_2

    .line 57
    new-instance v0, Ljava/lang/Exception;

    const-string v3, "Decrypted null data for %s"

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v4, p0, Lamo;->c:Laka;

    aput-object v4, v1, v2

    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    move v0, v2

    .line 43
    goto :goto_0

    .line 51
    :cond_1
    new-instance v0, Ljava/lang/Exception;

    const-string v3, "Result buffer is null or empty for %s"

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v4, p0, Lamo;->c:Laka;

    aput-object v4, v1, v2

    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 60
    :cond_2
    iget-object v1, p0, Lamo;->a:Laxn;

    iget-object v2, p0, Lamo;->b:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Laxn;->a(Ljava/lang/String;[B)V

    .line 61
    return-void
.end method
