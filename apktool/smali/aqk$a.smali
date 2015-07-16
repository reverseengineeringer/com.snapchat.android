.class final Laqk$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbn;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Laqk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Laqk;


# direct methods
.method private constructor <init>(Laqk;)V
    .locals 0

    .prologue
    .line 360
    iput-object p1, p0, Laqk$a;->a:Laqk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Laqk;B)V
    .locals 0

    .prologue
    .line 360
    invoke-direct {p0, p1}, Laqk$a;-><init>(Laqk;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 372
    iget-object v0, p0, Laqk$a;->a:Laqk;

    iget-boolean v0, v0, Laqk;->d:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Laqk$a;->a:Laqk;

    iget-object v0, v0, Laqk;->a:Lbj;

    invoke-virtual {v0}, Lbj;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Laqk$a;->a:Laqk;

    iget-object v0, v0, Laqk;->b:Lbj;

    invoke-virtual {v0}, Lbj;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 373
    iget-object v0, p0, Laqk$a;->a:Laqk;

    iget-object v0, v0, Laqk;->c:Lbh;

    invoke-virtual {v0}, Lbh;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laqk$b;

    .line 374
    invoke-interface {v0}, Laqk$b;->a()V

    goto :goto_0

    .line 377
    :cond_0
    return-void
.end method

.method public final a(Lbj;)V
    .locals 3

    .prologue
    .line 363
    iget-object v0, p0, Laqk$a;->a:Laqk;

    iget-boolean v0, v0, Laqk;->d:Z

    if-eqz v0, :cond_0

    .line 364
    iget-object v0, p0, Laqk$a;->a:Laqk;

    iget-object v0, v0, Laqk;->c:Lbh;

    invoke-virtual {v0}, Lbh;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laqk$b;

    .line 365
    iget-object v2, p0, Laqk$a;->a:Laqk;

    invoke-interface {v0, v2}, Laqk$b;->a(Laqk;)V

    goto :goto_0

    .line 368
    :cond_0
    return-void
.end method
