.class final Lbqc;
.super Lbqj;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbqc$a;
    }
.end annotation


# instance fields
.field private final a:Lbpt;

.field private final b:Lbql;


# direct methods
.method public constructor <init>(Lbpt;Lbql;)V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Lbqj;-><init>()V

    .line 37
    iput-object p1, p0, Lbqc;->a:Lbpt;

    .line 38
    iput-object p2, p0, Lbqc;->b:Lbql;

    .line 39
    return-void
.end method


# virtual methods
.method final a()I
    .locals 1

    .prologue
    .line 76
    const/4 v0, 0x2

    return v0
.end method

.method final a(Landroid/net/NetworkInfo;)Z
    .locals 1

    .prologue
    .line 80
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(Lbqh;)Z
    .locals 2

    .prologue
    .line 42
    iget-object v0, p1, Lbqh;->d:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    .line 43
    const-string v1, "http"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "https"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b(Lbqh;)Lbqj$a;
    .locals 8

    .prologue
    const-wide/16 v6, 0x0

    .line 47
    iget-object v0, p0, Lbqc;->a:Lbpt;

    iget-object v1, p1, Lbqh;->d:Landroid/net/Uri;

    iget v2, p1, Lbqh;->c:I

    invoke-interface {v0, v1, v2}, Lbpt;->a(Landroid/net/Uri;I)Lbpt$a;

    move-result-object v1

    .line 48
    iget-boolean v0, v1, Lbpt$a;->c:Z

    if-eqz v0, :cond_0

    sget-object v0, Lbqe$d;->b:Lbqe$d;

    .line 54
    :goto_0
    iget-object v2, v1, Lbpt$a;->b:Landroid/graphics/Bitmap;

    .line 55
    if-eqz v2, :cond_1

    .line 56
    new-instance v1, Lbqj$a;

    invoke-direct {v1, v2, v0}, Lbqj$a;-><init>(Landroid/graphics/Bitmap;Lbqe$d;)V

    move-object v0, v1

    .line 72
    :goto_1
    return-object v0

    .line 48
    :cond_0
    sget-object v0, Lbqe$d;->c:Lbqe$d;

    goto :goto_0

    .line 59
    :cond_1
    iget-object v2, v1, Lbpt$a;->a:Ljava/io/InputStream;

    .line 60
    if-nez v2, :cond_2

    .line 61
    const/4 v0, 0x0

    goto :goto_1

    .line 65
    :cond_2
    sget-object v3, Lbqe$d;->b:Lbqe$d;

    if-ne v0, v3, :cond_3

    iget-wide v4, v1, Lbpt$a;->d:J

    cmp-long v3, v4, v6

    if-nez v3, :cond_3

    .line 66
    invoke-static {v2}, Lbqp;->a(Ljava/io/InputStream;)V

    .line 67
    new-instance v0, Lbqc$a;

    const-string v1, "Received response with 0 content-length header."

    invoke-direct {v0, v1}, Lbqc$a;-><init>(Ljava/lang/String;)V

    throw v0

    .line 69
    :cond_3
    sget-object v3, Lbqe$d;->c:Lbqe$d;

    if-ne v0, v3, :cond_4

    iget-wide v4, v1, Lbpt$a;->d:J

    cmp-long v3, v4, v6

    if-lez v3, :cond_4

    .line 70
    iget-object v3, p0, Lbqc;->b:Lbql;

    iget-wide v4, v1, Lbpt$a;->d:J

    iget-object v1, v3, Lbql;->c:Landroid/os/Handler;

    iget-object v3, v3, Lbql;->c:Landroid/os/Handler;

    const/4 v6, 0x4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v6, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 72
    :cond_4
    new-instance v1, Lbqj$a;

    invoke-direct {v1, v2, v0}, Lbqj$a;-><init>(Ljava/io/InputStream;Lbqe$d;)V

    move-object v0, v1

    goto :goto_1
.end method

.method final b()Z
    .locals 1

    .prologue
    .line 84
    const/4 v0, 0x1

    return v0
.end method
