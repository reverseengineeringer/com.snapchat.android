.class public final Ltt;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected mGsonWrapper:Lato;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field protected mNetworkInterface:Lud;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    invoke-static {}, Lcom/snapchat/android/SnapchatApplication;->b()Lcom/snapchat/android/SnapchatApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/SnapchatApplication;->c()Laza;

    move-result-object v0

    invoke-interface {v0, p0}, Laza;->a(Ltt;)V

    .line 25
    return-void
.end method


# virtual methods
.method public final a()Lub;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Ltt;->mNetworkInterface:Lud;

    return-object v0
.end method

.method public final b()Lato;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Ltt;->mGsonWrapper:Lato;

    return-object v0
.end method
