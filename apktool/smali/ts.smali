.class public final Lts;
.super Ltx;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lts$a;
    }
.end annotation


# instance fields
.field private mCallback:Lts$a;


# direct methods
.method public constructor <init>(Lts$a;)V
    .locals 0
    .param p1    # Lts$a;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    .line 18
    invoke-direct {p0}, Ltx;-><init>()V

    .line 19
    iput-object p1, p0, Lts;->mCallback:Lts$a;

    .line 20
    return-void
.end method


# virtual methods
.method protected final getPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    const-string v0, "/loq/clear_feed"

    return-object v0
.end method

.method public final onResult(Lus;)V
    .locals 2
    .param p1    # Lus;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    .line 29
    invoke-super {p0, p1}, Ltx;->onResult(Lus;)V

    .line 31
    invoke-virtual {p1}, Lus;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 32
    iget-object v0, p0, Lts;->mCallback:Lts$a;

    invoke-interface {v0}, Lts$a;->a()V

    .line 36
    :goto_0
    invoke-static {}, Lbbo;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v1, Lbfm;

    invoke-direct {v1}, Lbfm;-><init>()V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 37
    return-void

    .line 34
    :cond_0
    iget-object v0, p0, Lts;->mCallback:Lts$a;

    invoke-interface {v0}, Lts$a;->v_()V

    goto :goto_0
.end method
