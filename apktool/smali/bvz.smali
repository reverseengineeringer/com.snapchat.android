.class public final Lbvz;
.super Lbvy;
.source "SourceFile"


# instance fields
.field public g:J


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lbvp;)V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0, p1, p2, p3}, Lbvy;-><init>(Landroid/content/Context;Ljava/lang/String;Lbvp;)V

    .line 49
    return-void
.end method


# virtual methods
.method protected final a(Ljava/lang/Long;)V
    .locals 4

    .prologue
    .line 71
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lbvz;->g:J

    .line 72
    iget-wide v0, p0, Lbvz;->g:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 73
    iget-object v0, p0, Lbvz;->b:Lbvp;

    invoke-virtual {v0, p0}, Lbvp;->a(Lbvy;)V

    .line 78
    :goto_0
    return-void

    .line 76
    :cond_0
    iget-object v0, p0, Lbvz;->b:Lbvp;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbvp;->a(Ljava/lang/Boolean;)V

    goto :goto_0
.end method

.method protected final varargs a([Ljava/lang/Integer;)V
    .locals 0

    .prologue
    .line 67
    return-void
.end method

.method protected final varargs b()Ljava/lang/Long;
    .locals 2

    .prologue
    .line 54
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-virtual {p0}, Lbvz;->c()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 55
    const/4 v1, 0x6

    invoke-static {v0, v1}, Lbvz;->a(Ljava/net/URL;I)Ljava/net/URLConnection;

    move-result-object v0

    .line 56
    invoke-virtual {v0}, Ljava/net/URLConnection;->getContentLength()I

    move-result v0

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 60
    :goto_0
    return-object v0

    .line 58
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 60
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0
.end method

.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 44
    invoke-virtual {p0}, Lbvz;->b()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 44
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p0, p1}, Lbvz;->a(Ljava/lang/Long;)V

    return-void
.end method

.method protected final bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 44
    return-void
.end method
