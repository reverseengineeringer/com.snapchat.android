.class Lbmh;
.super Lbzz;
.source "SourceFile"


# instance fields
.field private a:Z


# direct methods
.method public constructor <init>(Lcai;)V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0, p1}, Lbzz;-><init>(Lcai;)V

    .line 14
    return-void
.end method


# virtual methods
.method protected a()V
    .locals 0

    .prologue
    .line 50
    return-void
.end method

.method public final a_(Lbzu;J)V
    .locals 2

    .prologue
    .line 17
    iget-boolean v0, p0, Lbmh;->a:Z

    if-eqz v0, :cond_0

    .line 18
    invoke-virtual {p1, p2, p3}, Lbzu;->f(J)V

    .line 27
    :goto_0
    return-void

    .line 22
    :cond_0
    :try_start_0
    invoke-super {p0, p1, p2, p3}, Lbzz;->a_(Lbzu;J)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 24
    :catch_0
    move-exception v0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lbmh;->a:Z

    .line 25
    invoke-virtual {p0}, Lbmh;->a()V

    goto :goto_0
.end method

.method public close()V
    .locals 1

    .prologue
    .line 40
    iget-boolean v0, p0, Lbmh;->a:Z

    if-eqz v0, :cond_0

    .line 47
    :goto_0
    return-void

    .line 42
    :cond_0
    :try_start_0
    invoke-super {p0}, Lbzz;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 44
    :catch_0
    move-exception v0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lbmh;->a:Z

    .line 45
    invoke-virtual {p0}, Lbmh;->a()V

    goto :goto_0
.end method

.method public flush()V
    .locals 1

    .prologue
    .line 30
    iget-boolean v0, p0, Lbmh;->a:Z

    if-eqz v0, :cond_0

    .line 37
    :goto_0
    return-void

    .line 32
    :cond_0
    :try_start_0
    invoke-super {p0}, Lbzz;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 34
    :catch_0
    move-exception v0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lbmh;->a:Z

    .line 35
    invoke-virtual {p0}, Lbmh;->a()V

    goto :goto_0
.end method
