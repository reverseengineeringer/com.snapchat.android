.class public Ladj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lauz;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lauz",
        "<",
        "Lcom/snapchat/android/discover/model/DSnapPage;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/snapchat/android/discover/model/DSnapPage;)Z
    .locals 1
    .param p1    # Lcom/snapchat/android/discover/model/DSnapPage;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    .line 15
    invoke-virtual {p1}, Lcom/snapchat/android/discover/model/DSnapPage;->g()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 11
    check-cast p1, Lcom/snapchat/android/discover/model/DSnapPage;

    invoke-virtual {p0, p1}, Ladj;->a(Lcom/snapchat/android/discover/model/DSnapPage;)Z

    move-result v0

    return v0
.end method
