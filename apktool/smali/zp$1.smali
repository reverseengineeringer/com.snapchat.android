.class final Lzp$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Laji;

.field final synthetic b:Z

.field final synthetic c:Z

.field final synthetic d:Lzp;


# direct methods
.method constructor <init>(Lzp;Laji;ZZ)V
    .locals 0

    .prologue
    .line 215
    iput-object p1, p0, Lzp$1;->d:Lzp;

    iput-object p2, p0, Lzp$1;->a:Laji;

    iput-boolean p3, p0, Lzp$1;->b:Z

    iput-boolean p4, p0, Lzp$1;->c:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 219
    iget-object v0, p0, Lzp$1;->a:Laji;

    invoke-static {v0}, Laxv;->a(Laji;)[B

    move-result-object v0

    if-eqz v0, :cond_2

    .line 220
    iget-boolean v0, p0, Lzp$1;->b:Z

    if-eqz v0, :cond_0

    .line 221
    iget-object v0, p0, Lzp$1;->d:Lzp;

    iget-object v1, p0, Lzp$1;->a:Laji;

    invoke-virtual {v0, v1}, Lzp;->f(Laji;)V

    .line 222
    iget-object v0, p0, Lzp$1;->d:Lzp;

    iget-object v1, p0, Lzp$1;->a:Laji;

    invoke-virtual {v0, v1}, Lzp;->g(Laji;)V

    .line 224
    :cond_0
    iget-boolean v0, p0, Lzp$1;->c:Z

    if-eqz v0, :cond_1

    .line 225
    iget-object v0, p0, Lzp$1;->d:Lzp;

    iget-object v1, p0, Lzp$1;->a:Laji;

    invoke-virtual {v0, v1}, Lzp;->h(Laji;)V

    .line 226
    iget-object v0, p0, Lzp$1;->d:Lzp;

    iget-object v1, p0, Lzp$1;->a:Laji;

    invoke-virtual {v0, v1}, Lzp;->i(Laji;)V

    .line 231
    :cond_1
    :goto_0
    return-void

    .line 229
    :cond_2
    iget-object v0, p0, Lzp$1;->d:Lzp;

    iget-object v1, p0, Lzp$1;->a:Laji;

    iget-boolean v2, p0, Lzp$1;->b:Z

    iget-boolean v3, p0, Lzp$1;->c:Z

    invoke-virtual {v0, v1, v2, v3}, Lzp;->b(Laji;ZZ)V

    goto :goto_0
.end method
