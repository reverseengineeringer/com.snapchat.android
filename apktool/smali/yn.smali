.class public final Lyn;
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


# direct methods
.method protected constructor <init>()V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    invoke-static {}, Lcom/snapchat/android/SnapchatApplication;->b()Lcom/snapchat/android/SnapchatApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/SnapchatApplication;->c()Lazy;

    move-result-object v0

    invoke-interface {v0, p0}, Lazy;->a(Lyn;)V

    .line 26
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 2
    .annotation build Lchd;
    .end annotation

    .prologue
    .line 40
    iget-object v0, p0, Lyn;->a:Laze;

    sget-object v1, Lazh;->CREDIT_CARD_TOKEN:Lazf;

    invoke-virtual {v0, v1}, Laze;->a(Lazf;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lchd;
        .end annotation
    .end param

    .prologue
    .line 29
    iget-object v0, p0, Lyn;->a:Laze;

    sget-object v1, Lazh;->CREDIT_CARD_TOKEN:Lazf;

    invoke-virtual {v0, v1, p1}, Laze;->a(Lazf;Ljava/lang/String;)V

    .line 30
    return-void
.end method

.method public final b()V
    .locals 3

    .prologue
    .line 49
    iget-object v0, p0, Lyn;->a:Laze;

    sget-object v1, Lazh;->CREDIT_CARD_TOKEN:Lazf;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Laze;->a(Lazf;Ljava/lang/String;)V

    .line 50
    return-void
.end method
