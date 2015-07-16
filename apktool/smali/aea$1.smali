.class final Laea$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Laea;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/snapchat/android/discover/model/ChannelPage;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Laea;


# direct methods
.method constructor <init>(Laea;)V
    .locals 0

    .prologue
    .line 128
    iput-object p1, p0, Laea$1;->a:Laea;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 7

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v2, -0x1

    .line 128
    check-cast p1, Lcom/snapchat/android/discover/model/ChannelPage;

    check-cast p2, Lcom/snapchat/android/discover/model/ChannelPage;

    iget-object v0, p0, Laea$1;->a:Laea;

    iget-object v0, v0, Laea;->c:Ljava/util/Map;

    iget-object v1, p1, Lcom/snapchat/android/discover/model/ChannelPage;->b:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Laea$1;->a:Laea;

    iget-object v0, v0, Laea;->c:Ljava/util/Map;

    iget-object v1, p1, Lcom/snapchat/android/discover/model/ChannelPage;->b:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    move v1, v0

    :goto_0
    iget-object v0, p0, Laea$1;->a:Laea;

    iget-object v0, v0, Laea;->c:Ljava/util/Map;

    iget-object v5, p2, Lcom/snapchat/android/discover/model/ChannelPage;->b:Ljava/lang/String;

    invoke-interface {v0, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Laea$1;->a:Laea;

    iget-object v0, v0, Laea;->c:Ljava/util/Map;

    iget-object v2, p2, Lcom/snapchat/android/discover/model/ChannelPage;->b:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    :cond_0
    invoke-static {}, Lda;->a()Lda;

    move-result-object v6

    if-ltz v1, :cond_1

    move v5, v3

    :goto_1
    if-ltz v2, :cond_2

    move v0, v3

    :goto_2
    invoke-virtual {v6, v5, v0}, Lda;->a(ZZ)Lda;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Lda;->a(II)Lda;

    move-result-object v0

    invoke-virtual {v0}, Lda;->b()I

    move-result v0

    return v0

    :cond_1
    move v5, v4

    goto :goto_1

    :cond_2
    move v0, v4

    goto :goto_2

    :cond_3
    move v1, v2

    goto :goto_0
.end method
