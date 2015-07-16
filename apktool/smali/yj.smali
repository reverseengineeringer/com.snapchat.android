.class public final Lyj;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Ljavax/inject/Singleton;
.end annotation


# instance fields
.field protected a:Laze;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field protected b:Laum;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private c:Lym;


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

    invoke-virtual {v0}, Lcom/snapchat/android/SnapchatApplication;->c()Lazy;

    move-result-object v0

    invoke-interface {v0, p0}, Lazy;->a(Lyj;)V

    .line 32
    invoke-static {}, Lbbo;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/squareup/otto/Bus;->c(Ljava/lang/Object;)V

    .line 33
    return-void
.end method


# virtual methods
.method public final a()Lym;
    .locals 3
    .annotation build Lchd;
    .end annotation

    .prologue
    .line 42
    iget-object v0, p0, Lyj;->c:Lym;

    if-nez v0, :cond_0

    .line 43
    iget-object v0, p0, Lyj;->a:Laze;

    sget-object v1, Lazh;->SQ_AUTH_TOKEN:Lazf;

    invoke-virtual {v0, v1}, Laze;->a(Lazf;)Ljava/lang/String;

    move-result-object v0

    .line 44
    iget-object v1, p0, Lyj;->b:Laum;

    const-class v2, Lym;

    invoke-virtual {v1, v0, v2}, Laum;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lym;

    iput-object v0, p0, Lyj;->c:Lym;

    .line 47
    :cond_0
    iget-object v0, p0, Lyj;->c:Lym;

    return-object v0
.end method

.method public final a(Lym;)V
    .locals 4
    .param p1    # Lym;
        .annotation build Lchd;
        .end annotation
    .end param

    .prologue
    .line 36
    iput-object p1, p0, Lyj;->c:Lym;

    .line 37
    iget-object v0, p0, Lyj;->a:Laze;

    sget-object v1, Lazh;->SQ_AUTH_TOKEN:Lazf;

    iget-object v2, p0, Lyj;->b:Laum;

    iget-object v3, p0, Lyj;->c:Lym;

    invoke-virtual {v2, v3}, Laum;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Laze;->a(Lazf;Ljava/lang/String;)V

    .line 38
    return-void
.end method

.method public final onLogoutEvent(Lbdh;)V
    .locals 1
    .annotation runtime Lbpi;
    .end annotation

    .prologue
    .line 56
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lyj;->a(Lym;)V

    .line 57
    return-void
.end method
