.class final Ladh$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Laej$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ladh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ladh;


# direct methods
.method constructor <init>(Ladh;)V
    .locals 0

    .prologue
    .line 163
    iput-object p1, p0, Ladh$3;->a:Ladh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;)V
    .locals 6
    .param p1    # Ljava/util/List;
        .annotation build Lchc;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/snapchat/android/discover/model/ChannelPage;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 166
    iget-object v2, p0, Ladh$3;->a:Ladh;

    const/4 v0, 0x0

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/discover/model/ChannelPage;

    invoke-virtual {v0}, Lcom/snapchat/android/discover/model/ChannelPage;->n()Lcom/snapchat/android/discover/model/MediaState;

    move-result-object v4

    sget-object v5, Lcom/snapchat/android/discover/model/MediaState;->SUCCESS:Lcom/snapchat/android/discover/model/MediaState;

    if-eq v4, v5, :cond_5

    invoke-virtual {v0}, Lcom/snapchat/android/discover/model/ChannelPage;->n()Lcom/snapchat/android/discover/model/MediaState;

    move-result-object v4

    sget-object v5, Lcom/snapchat/android/discover/model/MediaState;->NOT_STARTED:Lcom/snapchat/android/discover/model/MediaState;

    if-ne v4, v5, :cond_5

    iget-object v4, v2, Ladh;->b:Laxn;

    invoke-virtual {v0}, Lcom/snapchat/android/discover/model/ChannelPage;->o()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Laxn;->e(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, v2, Ladh;->d:Laed;

    sget-object v5, Lcom/snapchat/android/discover/model/MediaState;->SUCCESS:Lcom/snapchat/android/discover/model/MediaState;

    invoke-virtual {v4, v0, v5}, Laed;->a(Lcom/snapchat/android/discover/model/ChannelPage;Lcom/snapchat/android/discover/model/MediaState;)Z

    move-result v0

    or-int/2addr v0, v1

    move v1, v0

    goto :goto_0

    :cond_0
    iget-object v4, v2, Ladh;->b:Laxn;

    invoke-virtual {v4}, Laxn;->a()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v2, v0}, Ladh;->a(Lcom/snapchat/android/discover/model/ChannelPage;)Z

    move-result v0

    or-int/2addr v0, v1

    move v1, v0

    goto :goto_0

    :cond_1
    iget-object v4, v2, Ladh;->d:Laed;

    sget-object v5, Lcom/snapchat/android/discover/model/MediaState;->EXTERNAL_STORAGE_UNAVAILABLE:Lcom/snapchat/android/discover/model/MediaState;

    invoke-virtual {v4, v0, v5}, Laed;->a(Lcom/snapchat/android/discover/model/ChannelPage;Lcom/snapchat/android/discover/model/MediaState;)Z

    move-result v0

    or-int/2addr v1, v0

    move v0, v1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_2
    if-eqz v1, :cond_3

    iget-object v0, v2, Ladh;->c:Laej;

    invoke-virtual {v0}, Laej;->c()V

    :cond_3
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/discover/model/ChannelPage;

    invoke-virtual {v0}, Lcom/snapchat/android/discover/model/ChannelPage;->o()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    iget-object v0, v2, Ladh;->b:Laxn;

    invoke-virtual {v0, v1}, Laxn;->a(Ljava/util/Set;)V

    .line 167
    return-void

    :cond_5
    move v0, v1

    goto :goto_1
.end method
