.class final Lacg$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ladj$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lacg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lacg;


# direct methods
.method constructor <init>(Lacg;)V
    .locals 0

    .prologue
    .line 141
    iput-object p1, p0, Lacg$1;->a:Lacg;

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
    .annotation build Lavl;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/snapchat/android/discover/model/DSnapPage;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v2, 0x0

    .line 144
    .line 146
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v2

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/discover/model/DSnapPage;

    .line 147
    iget-object v4, v0, Lcom/snapchat/android/discover/model/DSnapPage;->m:Lcom/snapchat/android/discover/model/MediaState;

    invoke-virtual {v4}, Lcom/snapchat/android/discover/model/MediaState;->isError()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 148
    const-string v4, "EditionMediaLoader"

    const-string v5, "Resetting placeholder state for %s because it was in error state %s"

    new-array v6, v9, [Ljava/lang/Object;

    aput-object v0, v6, v2

    iget-object v7, v0, Lcom/snapchat/android/discover/model/DSnapPage;->m:Lcom/snapchat/android/discover/model/MediaState;

    invoke-virtual {v7}, Lcom/snapchat/android/discover/model/MediaState;->name()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v4, v5, v6}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 150
    iget-object v4, p0, Lacg$1;->a:Lacg;

    iget-object v4, v4, Lacg;->b:Ladd;

    sget-object v5, Lcom/snapchat/android/discover/model/MediaState;->NOT_STARTED:Lcom/snapchat/android/discover/model/MediaState;

    invoke-virtual {v4, v0, v5}, Ladd;->b(Lcom/snapchat/android/discover/model/DSnapPage;Lcom/snapchat/android/discover/model/MediaState;)Z

    move-result v4

    or-int/2addr v1, v4

    .line 152
    :cond_0
    iget-object v4, v0, Lcom/snapchat/android/discover/model/DSnapPage;->l:Lcom/snapchat/android/discover/model/MediaState;

    invoke-virtual {v4}, Lcom/snapchat/android/discover/model/MediaState;->isError()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 153
    const-string v4, "EditionMediaLoader"

    const-string v5, "Resetting media state for %s because it was in error state %s"

    new-array v6, v9, [Ljava/lang/Object;

    aput-object v0, v6, v2

    iget-object v7, v0, Lcom/snapchat/android/discover/model/DSnapPage;->l:Lcom/snapchat/android/discover/model/MediaState;

    invoke-virtual {v7}, Lcom/snapchat/android/discover/model/MediaState;->name()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v4, v5, v6}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 155
    iget-object v4, p0, Lacg$1;->a:Lacg;

    iget-object v4, v4, Lacg;->b:Ladd;

    sget-object v5, Lcom/snapchat/android/discover/model/MediaState;->NOT_STARTED:Lcom/snapchat/android/discover/model/MediaState;

    invoke-virtual {v4, v0, v5}, Ladd;->a(Lcom/snapchat/android/discover/model/DSnapPage;Lcom/snapchat/android/discover/model/MediaState;)Z

    move-result v0

    or-int/2addr v0, v1

    :goto_1
    move v1, v0

    .line 157
    goto :goto_0

    .line 160
    :cond_1
    if-eqz v1, :cond_2

    .line 161
    iget-object v0, p0, Lacg$1;->a:Lacg;

    iget-object v0, v0, Lacg;->a:Ladj;

    invoke-virtual {v0}, Ladj;->b()V

    .line 163
    :cond_2
    return-void

    :cond_3
    move v0, v1

    goto :goto_1
.end method
