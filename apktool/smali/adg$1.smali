.class final Ladg$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Laej$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ladg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ladg;


# direct methods
.method constructor <init>(Ladg;)V
    .locals 0

    .prologue
    .line 141
    iput-object p1, p0, Ladg$1;->a:Ladg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;)V
    .locals 8
    .param p1    # Ljava/util/List;
        .annotation build Lchc;
        .end annotation
    .end param
    .annotation build Lawj;
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
    const/4 v7, 0x2

    const/4 v6, 0x1

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
    new-array v4, v7, [Ljava/lang/Object;

    aput-object v0, v4, v2

    iget-object v5, v0, Lcom/snapchat/android/discover/model/DSnapPage;->m:Lcom/snapchat/android/discover/model/MediaState;

    invoke-virtual {v5}, Lcom/snapchat/android/discover/model/MediaState;->name()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    .line 150
    iget-object v4, p0, Ladg$1;->a:Ladg;

    iget-object v4, v4, Ladg;->b:Laed;

    sget-object v5, Lcom/snapchat/android/discover/model/MediaState;->NOT_STARTED:Lcom/snapchat/android/discover/model/MediaState;

    invoke-virtual {v4, v0, v5}, Laed;->b(Lcom/snapchat/android/discover/model/DSnapPage;Lcom/snapchat/android/discover/model/MediaState;)Z

    move-result v4

    or-int/2addr v1, v4

    .line 152
    :cond_0
    iget-object v4, v0, Lcom/snapchat/android/discover/model/DSnapPage;->l:Lcom/snapchat/android/discover/model/MediaState;

    invoke-virtual {v4}, Lcom/snapchat/android/discover/model/MediaState;->isError()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 153
    new-array v4, v7, [Ljava/lang/Object;

    aput-object v0, v4, v2

    iget-object v5, v0, Lcom/snapchat/android/discover/model/DSnapPage;->l:Lcom/snapchat/android/discover/model/MediaState;

    invoke-virtual {v5}, Lcom/snapchat/android/discover/model/MediaState;->name()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    .line 155
    iget-object v4, p0, Ladg$1;->a:Ladg;

    iget-object v4, v4, Ladg;->b:Laed;

    sget-object v5, Lcom/snapchat/android/discover/model/MediaState;->NOT_STARTED:Lcom/snapchat/android/discover/model/MediaState;

    invoke-virtual {v4, v0, v5}, Laed;->a(Lcom/snapchat/android/discover/model/DSnapPage;Lcom/snapchat/android/discover/model/MediaState;)Z

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
    iget-object v0, p0, Ladg$1;->a:Ladg;

    iget-object v0, v0, Ladg;->a:Laej;

    invoke-virtual {v0}, Laej;->c()V

    .line 163
    :cond_2
    return-void

    :cond_3
    move v0, v1

    goto :goto_1
.end method
