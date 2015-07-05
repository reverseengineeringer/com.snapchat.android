.class final Lyt$2;
.super Laww;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lyt;->b(Laim;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Laim;

.field final synthetic c:Z

.field final synthetic d:Lyt;


# direct methods
.method constructor <init>(Lyt;ZLaim;Z)V
    .locals 0

    .prologue
    .line 366
    iput-object p1, p0, Lyt$2;->d:Lyt;

    iput-boolean p2, p0, Lyt$2;->a:Z

    iput-object p3, p0, Lyt$2;->b:Laim;

    iput-boolean p4, p0, Lyt$2;->c:Z

    invoke-direct {p0}, Laww;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a(Ljava/lang/Boolean;)V
    .locals 6
    .param p1    # Ljava/lang/Boolean;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 379
    invoke-super {p0, p1}, Laww;->a(Ljava/lang/Boolean;)V

    .line 382
    iget-boolean v0, p0, Lyt$2;->a:Z

    if-eqz v0, :cond_0

    .line 383
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 384
    iget-object v0, p0, Lyt$2;->d:Lyt;

    iget-object v1, p0, Lyt$2;->b:Laim;

    invoke-virtual {v0, v1}, Lyt;->g(Laim;)V

    .line 391
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lyt$2;->c:Z

    if-eqz v0, :cond_1

    .line 392
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 393
    iget-object v0, p0, Lyt$2;->d:Lyt;

    iget-object v1, p0, Lyt$2;->b:Laim;

    invoke-virtual {v0, v1}, Lyt;->i(Laim;)V

    .line 400
    :cond_1
    :goto_1
    return-void

    .line 386
    :cond_2
    const-string v0, "SaveSentSnapToCacheTask"

    const-string v1, "Can not send snap because it was not saved to the cache. | Client ID: %s"

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p0, Lyt$2;->b:Laim;

    iget-object v3, v3, Lcom/snapchat/android/model/Mediabryo;->mClientId:Ljava/lang/String;

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 388
    iget-object v0, p0, Lyt$2;->d:Lyt;

    iget-object v0, v0, Lyt;->a:Lajn;

    iget-object v1, p0, Lyt$2;->b:Laim;

    sget-object v2, Lcom/snapchat/android/model/MediaMailingMetadata$SendStatus;->FAILED:Lcom/snapchat/android/model/MediaMailingMetadata$SendStatus;

    invoke-virtual {v0, v1, v2}, Lajn;->a(Laim;Lcom/snapchat/android/model/MediaMailingMetadata$SendStatus;)V

    goto :goto_0

    .line 395
    :cond_3
    const-string v0, "SaveSentSnapToCacheTask"

    const-string v1, "Can not post story because is was not saved to the cache. | Client ID: %s"

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p0, Lyt$2;->b:Laim;

    iget-object v3, v3, Lcom/snapchat/android/model/Mediabryo;->mClientId:Ljava/lang/String;

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 397
    iget-object v0, p0, Lyt$2;->d:Lyt;

    iget-object v0, v0, Lyt;->a:Lajn;

    iget-object v1, p0, Lyt$2;->b:Laim;

    sget-object v2, Lcom/snapchat/android/model/MediaMailingMetadata$PostStatus;->FAILED:Lcom/snapchat/android/model/MediaMailingMetadata$PostStatus;

    invoke-virtual {v0, v1, v2}, Lajn;->a(Laim;Lcom/snapchat/android/model/MediaMailingMetadata$PostStatus;)V

    goto :goto_1
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 366
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lyt$2;->a(Ljava/lang/Boolean;)V

    return-void
.end method

.method protected final onPreExecute()V
    .locals 2

    .prologue
    .line 369
    invoke-super {p0}, Laww;->onPreExecute()V

    .line 370
    iget-boolean v0, p0, Lyt$2;->a:Z

    if-eqz v0, :cond_0

    .line 371
    iget-object v0, p0, Lyt$2;->d:Lyt;

    iget-object v1, p0, Lyt$2;->b:Laim;

    invoke-virtual {v0, v1}, Lyt;->f(Laim;)V

    .line 373
    :cond_0
    iget-boolean v0, p0, Lyt$2;->c:Z

    if-eqz v0, :cond_1

    .line 374
    iget-object v0, p0, Lyt$2;->d:Lyt;

    iget-object v1, p0, Lyt$2;->b:Laim;

    invoke-virtual {v0, v1}, Lyt;->h(Laim;)V

    .line 376
    :cond_1
    return-void
.end method
