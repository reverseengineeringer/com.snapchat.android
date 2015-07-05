.class public final Lxn;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Ljavax/inject/Singleton;
.end annotation


# instance fields
.field protected a:Layg;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field protected b:Lato;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private c:Lxq;


# direct methods
.method protected constructor <init>()V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    invoke-static {}, Lcom/snapchat/android/SnapchatApplication;->b()Lcom/snapchat/android/SnapchatApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/SnapchatApplication;->c()Laza;

    move-result-object v0

    invoke-interface {v0, p0}, Laza;->a(Lxn;)V

    .line 32
    invoke-static {}, Lban;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/squareup/otto/Bus;->c(Ljava/lang/Object;)V

    .line 33
    return-void
.end method


# virtual methods
.method public final a()Lxq;
    .locals 3
    .annotation build Lcgc;
    .end annotation

    .prologue
    .line 42
    iget-object v0, p0, Lxn;->c:Lxq;

    if-nez v0, :cond_0

    .line 43
    iget-object v0, p0, Lxn;->a:Layg;

    sget-object v1, Layj;->SQ_AUTH_TOKEN:Layh;

    invoke-virtual {v0, v1}, Layg;->a(Layh;)Ljava/lang/String;

    move-result-object v0

    .line 44
    iget-object v1, p0, Lxn;->b:Lato;

    const-class v2, Lxq;

    invoke-virtual {v1, v0, v2}, Lato;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lxq;

    iput-object v0, p0, Lxn;->c:Lxq;

    .line 47
    :cond_0
    iget-object v0, p0, Lxn;->c:Lxq;

    return-object v0
.end method

.method public final a(Lxq;)V
    .locals 4
    .param p1    # Lxq;
        .annotation build Lcgc;
        .end annotation
    .end param

    .prologue
    .line 36
    iput-object p1, p0, Lxn;->c:Lxq;

    .line 37
    iget-object v0, p0, Lxn;->a:Layg;

    sget-object v1, Layj;->SQ_AUTH_TOKEN:Layh;

    iget-object v2, p0, Lxn;->b:Lato;

    iget-object v3, p0, Lxn;->c:Lxq;

    invoke-virtual {v2, v3}, Lato;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Layg;->a(Layh;Ljava/lang/String;)V

    .line 38
    return-void
.end method

.method public final onLogoutEvent(Lbch;)V
    .locals 1
    .annotation runtime Lboh;
    .end annotation

    .prologue
    .line 56
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lxn;->a(Lxq;)V

    .line 57
    return-void
.end method
