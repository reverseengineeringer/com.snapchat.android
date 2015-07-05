.class public final Ltc;
.super Lth;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltc$a;
    }
.end annotation


# instance fields
.field private mCallback:Ltc$a;


# direct methods
.method public constructor <init>(Ltc$a;)V
    .locals 0
    .param p1    # Ltc$a;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    .line 18
    invoke-direct {p0}, Lth;-><init>()V

    .line 19
    iput-object p1, p0, Ltc;->mCallback:Ltc$a;

    .line 20
    return-void
.end method


# virtual methods
.method public final a(Luc;)V
    .locals 2
    .param p1    # Luc;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    .line 29
    invoke-super {p0, p1}, Lth;->a(Luc;)V

    .line 31
    invoke-virtual {p1}, Luc;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 32
    iget-object v0, p0, Ltc;->mCallback:Ltc$a;

    invoke-interface {v0}, Ltc$a;->a()V

    .line 36
    :goto_0
    invoke-static {}, Lban;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v1, Lben;

    invoke-direct {v1}, Lben;-><init>()V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 37
    return-void

    .line 34
    :cond_0
    iget-object v0, p0, Ltc;->mCallback:Ltc$a;

    invoke-interface {v0}, Ltc$a;->w_()V

    goto :goto_0
.end method

.method protected final d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    const-string v0, "/loq/clear_feed"

    return-object v0
.end method
