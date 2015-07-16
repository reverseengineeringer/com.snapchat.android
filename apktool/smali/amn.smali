.class public abstract Lamn;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lalw$a;


# instance fields
.field protected final a:Laxn;

.field protected final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Laxn;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    invoke-static {p1}, Lco;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laxn;

    iput-object v0, p0, Lamn;->a:Laxn;

    .line 25
    invoke-static {p2}, Lco;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lamn;->b:Ljava/lang/String;

    .line 26
    return-void
.end method


# virtual methods
.method public final a(Laly;)V
    .locals 2

    .prologue
    .line 46
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "onCanceled has not been implemented for media downloads."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final a(Laly;Lbgl;Lus;)V
    .locals 3

    .prologue
    .line 30
    const/4 v0, 0x0

    .line 31
    if-eqz p3, :cond_0

    invoke-virtual {p3}, Lus;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 33
    :try_start_0
    invoke-virtual {p0, p2}, Lamn;->a(Lbgl;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 41
    :goto_0
    invoke-virtual {p0, p3, v0}, Lamn;->a(Lus;Ljava/lang/Exception;)V

    .line 42
    return-void

    .line 39
    :cond_0
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p3, v1, v2

    goto :goto_0

    .line 34
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected a(Lbgl;)V
    .locals 4

    .prologue
    .line 61
    invoke-static {p1}, Lco;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    iget v0, p1, Lbgl;->mSize:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lco;->a(Z)V

    .line 63
    iget-object v0, p0, Lamn;->a:Laxn;

    iget-object v1, p0, Lamn;->b:Ljava/lang/String;

    iget-object v2, p1, Lbgl;->mBuffer:[B

    iget v3, p1, Lbgl;->mSize:I

    invoke-virtual {v0, v1, v2, v3}, Laxn;->a(Ljava/lang/String;[BI)Ljava/lang/String;

    .line 64
    return-void

    .line 62
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public abstract a(Lus;Ljava/lang/Exception;)V
.end method
