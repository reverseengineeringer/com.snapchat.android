.class public final Luj;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected mGsonWrapper:Laum;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field protected mNetworkInterface:Lut;
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

    invoke-virtual {v0}, Lcom/snapchat/android/SnapchatApplication;->c()Lazy;

    move-result-object v0

    invoke-interface {v0, p0}, Lazy;->a(Luj;)V

    .line 25
    return-void
.end method


# virtual methods
.method public final a()Lur;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Luj;->mNetworkInterface:Lut;

    return-object v0
.end method

.method public final b()Laum;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Luj;->mGsonWrapper:Laum;

    return-object v0
.end method
