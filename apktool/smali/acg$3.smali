.class final Lacg$3;
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
    .line 199
    iput-object p1, p0, Lacg$3;->a:Lacg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;)V
    .locals 9
    .param p1    # Ljava/util/List;
        .annotation build Lcgb;
        .end annotation
    .end param
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
    const/4 v2, 0x0

    .line 202
    iget-object v5, p0, Lacg$3;->a:Lacg;

    iget-object v6, v5, Lacg;->g:Lacf;

    iget-object v0, v6, Lacf;->b:Lcom/snapchat/android/discover/model/DSnapPage;

    if-eqz v0, :cond_9

    new-instance v1, Lacg$4;

    invoke-direct {v1, v5, v0}, Lacg$4;-><init>(Lacg;Lcom/snapchat/android/discover/model/DSnapPage;)V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0, v1}, Ldj;->a(Ljava/util/Iterator;Lcl;)I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    move v1, v0

    :goto_0
    move v3, v1

    move v4, v2

    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/2addr v0, v1

    if-ge v3, v0, :cond_5

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    rem-int v0, v3, v0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/discover/model/DSnapPage;

    invoke-virtual {v0}, Lcom/snapchat/android/discover/model/DSnapPage;->c()Lcom/snapchat/android/discover/model/MediaState;

    move-result-object v7

    sget-object v8, Lcom/snapchat/android/discover/model/MediaState;->SUCCESS:Lcom/snapchat/android/discover/model/MediaState;

    if-eq v7, v8, :cond_0

    invoke-virtual {v0}, Lcom/snapchat/android/discover/model/DSnapPage;->c()Lcom/snapchat/android/discover/model/MediaState;

    move-result-object v7

    sget-object v8, Lcom/snapchat/android/discover/model/MediaState;->RESOLVE_NEEDED:Lcom/snapchat/android/discover/model/MediaState;

    if-ne v7, v8, :cond_1

    iget-object v7, v5, Lacg;->d:Laco;

    invoke-virtual {v7, v0}, Laco;->a(Lcom/snapchat/android/discover/model/DSnapPage;)Z

    move-result v0

    or-int/2addr v4, v0

    :cond_0
    :goto_2
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Lcom/snapchat/android/discover/model/DSnapPage;->c()Lcom/snapchat/android/discover/model/MediaState;

    move-result-object v7

    sget-object v8, Lcom/snapchat/android/discover/model/MediaState;->NOT_STARTED:Lcom/snapchat/android/discover/model/MediaState;

    if-ne v7, v8, :cond_0

    invoke-virtual {v0}, Lcom/snapchat/android/discover/model/DSnapPage;->b()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_0

    iget-object v7, v5, Lacg;->c:Lawp;

    invoke-virtual {v0}, Lcom/snapchat/android/discover/model/DSnapPage;->b()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lawp;->e(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    iget-object v7, v5, Lacg;->b:Ladd;

    sget-object v8, Lcom/snapchat/android/discover/model/MediaState;->SUCCESS:Lcom/snapchat/android/discover/model/MediaState;

    invoke-virtual {v7, v0, v8}, Ladd;->a(Lcom/snapchat/android/discover/model/DSnapPage;Lcom/snapchat/android/discover/model/MediaState;)Z

    move-result v0

    or-int/2addr v4, v0

    goto :goto_2

    :cond_2
    iget-object v7, v5, Lacg;->c:Lawp;

    invoke-virtual {v7}, Lawp;->a()Z

    move-result v7

    if-eqz v7, :cond_4

    new-instance v7, Lalc$a;

    invoke-direct {v7}, Lalc$a;-><init>()V

    iget-object v8, v5, Lacg;->f:Lacq;

    invoke-interface {v8, v6, v0, v7}, Lacq;->a(Lacf;Lcom/snapchat/android/discover/model/DSnapPage;Lalc$a;)Z

    move-result v8

    if-eqz v8, :cond_3

    iget-object v8, v5, Lacg;->e:Lacp;

    invoke-virtual {v8, v6, v0, v7}, Lacp;->a(Lacf;Lcom/snapchat/android/discover/model/DSnapPage;Lalc$a;)Z

    move-result v0

    :goto_3
    or-int/2addr v4, v0

    goto :goto_2

    :cond_3
    move v0, v2

    goto :goto_3

    :cond_4
    iget-object v7, v5, Lacg;->b:Ladd;

    sget-object v8, Lcom/snapchat/android/discover/model/MediaState;->EXTERNAL_STORAGE_UNAVAILABLE:Lcom/snapchat/android/discover/model/MediaState;

    invoke-virtual {v7, v0, v8}, Ladd;->a(Lcom/snapchat/android/discover/model/DSnapPage;Lcom/snapchat/android/discover/model/MediaState;)Z

    move-result v0

    or-int/2addr v4, v0

    goto :goto_2

    :cond_5
    if-eqz v4, :cond_6

    iget-object v0, v5, Lacg;->a:Ladj;

    invoke-virtual {v0}, Ladj;->b()V

    :cond_6
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_7
    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/discover/model/DSnapPage;

    invoke-virtual {v0}, Lcom/snapchat/android/discover/model/DSnapPage;->b()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_7

    invoke-virtual {v0}, Lcom/snapchat/android/discover/model/DSnapPage;->b()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_8
    iget-object v0, v5, Lacg;->c:Lawp;

    invoke-virtual {v0, v1}, Lawp;->a(Ljava/util/Set;)V

    .line 203
    return-void

    :cond_9
    move v1, v2

    goto/16 :goto_0
.end method
