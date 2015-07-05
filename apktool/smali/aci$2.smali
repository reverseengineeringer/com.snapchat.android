.class final Laci$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ladj$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Laci;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Laci;


# direct methods
.method constructor <init>(Laci;)V
    .locals 0

    .prologue
    .line 153
    iput-object p1, p0, Laci$2;->a:Laci;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;)V
    .locals 10
    .param p1    # Ljava/util/List;
        .annotation build Lcgb;
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
    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v2, 0x0

    .line 156
    .line 158
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v2

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/discover/model/ChannelPage;

    .line 159
    invoke-virtual {v0}, Lcom/snapchat/android/discover/model/ChannelPage;->k()Lcom/snapchat/android/discover/model/MediaState;

    move-result-object v4

    invoke-virtual {v4}, Lcom/snapchat/android/discover/model/MediaState;->isError()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 160
    const-string v4, "PublisherIconMediaLoader"

    const-string v5, "DISCOVER-MEDIA-BRAND-ICON: Resetting state for filled icon for %s because it was in error state %s"

    new-array v6, v9, [Ljava/lang/Object;

    aput-object v0, v6, v2

    invoke-virtual {v0}, Lcom/snapchat/android/discover/model/ChannelPage;->k()Lcom/snapchat/android/discover/model/MediaState;

    move-result-object v7

    invoke-virtual {v7}, Lcom/snapchat/android/discover/model/MediaState;->name()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v4, v5, v6}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 163
    iget-object v4, p0, Laci$2;->a:Laci;

    iget-object v4, v4, Laci;->d:Ladd;

    sget-object v5, Lcom/snapchat/android/discover/model/MediaState;->NOT_STARTED:Lcom/snapchat/android/discover/model/MediaState;

    invoke-virtual {v4, v0, v5}, Ladd;->b(Lcom/snapchat/android/discover/model/ChannelPage;Lcom/snapchat/android/discover/model/MediaState;)Z

    move-result v4

    or-int/2addr v1, v4

    .line 166
    :cond_0
    invoke-virtual {v0}, Lcom/snapchat/android/discover/model/ChannelPage;->l()Lcom/snapchat/android/discover/model/MediaState;

    move-result-object v4

    invoke-virtual {v4}, Lcom/snapchat/android/discover/model/MediaState;->isError()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 167
    const-string v4, "PublisherIconMediaLoader"

    const-string v5, "DISCOVER-MEDIA-BRAND-ICON: Resetting state for inverted icon for %s because it was in error state %s"

    new-array v6, v9, [Ljava/lang/Object;

    aput-object v0, v6, v2

    invoke-virtual {v0}, Lcom/snapchat/android/discover/model/ChannelPage;->l()Lcom/snapchat/android/discover/model/MediaState;

    move-result-object v7

    invoke-virtual {v7}, Lcom/snapchat/android/discover/model/MediaState;->name()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v4, v5, v6}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 170
    iget-object v4, p0, Laci$2;->a:Laci;

    iget-object v4, v4, Laci;->d:Ladd;

    sget-object v5, Lcom/snapchat/android/discover/model/MediaState;->NOT_STARTED:Lcom/snapchat/android/discover/model/MediaState;

    invoke-virtual {v4, v0, v5}, Ladd;->c(Lcom/snapchat/android/discover/model/ChannelPage;Lcom/snapchat/android/discover/model/MediaState;)Z

    move-result v4

    or-int/2addr v1, v4

    .line 173
    :cond_1
    invoke-virtual {v0}, Lcom/snapchat/android/discover/model/ChannelPage;->m()Lcom/snapchat/android/discover/model/MediaState;

    move-result-object v4

    invoke-virtual {v4}, Lcom/snapchat/android/discover/model/MediaState;->isError()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 174
    const-string v4, "PublisherIconMediaLoader"

    const-string v5, "BRAND-ICON: Resetting state for loading icon for %s because it was in error state %s"

    new-array v6, v9, [Ljava/lang/Object;

    aput-object v0, v6, v2

    invoke-virtual {v0}, Lcom/snapchat/android/discover/model/ChannelPage;->m()Lcom/snapchat/android/discover/model/MediaState;

    move-result-object v7

    invoke-virtual {v7}, Lcom/snapchat/android/discover/model/MediaState;->name()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v4, v5, v6}, Lcom/snapchat/android/Timber;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 177
    iget-object v4, p0, Laci$2;->a:Laci;

    iget-object v4, v4, Laci;->d:Ladd;

    sget-object v5, Lcom/snapchat/android/discover/model/MediaState;->NOT_STARTED:Lcom/snapchat/android/discover/model/MediaState;

    invoke-virtual {v4, v0, v5}, Ladd;->d(Lcom/snapchat/android/discover/model/ChannelPage;Lcom/snapchat/android/discover/model/MediaState;)Z

    move-result v0

    or-int/2addr v0, v1

    :goto_1
    move v1, v0

    .line 179
    goto/16 :goto_0

    .line 182
    :cond_2
    if-eqz v1, :cond_3

    .line 183
    iget-object v0, p0, Laci$2;->a:Laci;

    iget-object v0, v0, Laci;->c:Ladj;

    invoke-virtual {v0}, Ladj;->b()V

    .line 185
    :cond_3
    return-void

    :cond_4
    move v0, v1

    goto :goto_1
.end method
