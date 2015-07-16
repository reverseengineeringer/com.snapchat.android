.class final Lbmj$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbnk;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbmj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lbmj;


# direct methods
.method constructor <init>(Lbmj;)V
    .locals 0

    .prologue
    .line 137
    iput-object p1, p0, Lbmj$1;->a:Lbmj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lbnb;)Lbnd;
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lbmj$1;->a:Lbmj;

    invoke-virtual {v0, p1}, Lbmj;->a(Lbnb;)Lbnd;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lbnd;)Lbns;
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lbmj$1;->a:Lbmj;

    invoke-virtual {v0, p1}, Lbmj;->a(Lbnd;)Lbns;

    move-result-object v0

    return-object v0
.end method

.method public final a()V
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lbmj$1;->a:Lbmj;

    invoke-virtual {v0}, Lbmj;->b()V

    .line 152
    return-void
.end method

.method public final a(Lbnd;Lbnd;)V
    .locals 8

    .prologue
    .line 148
    new-instance v1, Lbmj$c;

    invoke-direct {v1, p2}, Lbmj$c;-><init>(Lbnd;)V

    iget-object v0, p1, Lbnd;->g:Lbne;

    check-cast v0, Lbmj$b;

    invoke-static {v0}, Lbmj$b;->a(Lbmj$b;)Lbnh$c;

    move-result-object v2

    const/4 v0, 0x0

    :try_start_0
    iget-object v3, v2, Lbnh$c;->d:Lbnh;

    iget-object v4, v2, Lbnh$c;->a:Ljava/lang/String;

    iget-wide v6, v2, Lbnh$c;->b:J

    invoke-static {v3, v4, v6, v7}, Lbnh;->a(Lbnh;Ljava/lang/String;J)Lbnh$a;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v1, v0}, Lbmj$c;->a(Lbnh$a;)V

    invoke-virtual {v0}, Lbnh$a;->a()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 149
    :cond_0
    :goto_0
    return-void

    .line 148
    :catch_0
    move-exception v1

    invoke-static {v0}, Lbmj;->a(Lbnh$a;)V

    goto :goto_0
.end method

.method public final a(Lbnt;)V
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lbmj$1;->a:Lbmj;

    invoke-virtual {v0, p1}, Lbmj;->a(Lbnt;)V

    .line 155
    return-void
.end method

.method public final b(Lbnb;)V
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lbmj$1;->a:Lbmj;

    invoke-virtual {v0, p1}, Lbmj;->b(Lbnb;)V

    .line 146
    return-void
.end method
