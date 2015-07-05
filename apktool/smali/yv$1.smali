.class public final Lyv$1;
.super Laww;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lyv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Laim;

.field final synthetic b:Lyv;


# direct methods
.method public constructor <init>(Lyv;Laim;)V
    .locals 0

    .prologue
    .line 63
    iput-object p1, p0, Lyv$1;->b:Lyv;

    iput-object p2, p0, Lyv$1;->a:Laim;

    invoke-direct {p0}, Laww;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a(Ljava/lang/Boolean;)V
    .locals 5
    .param p1    # Ljava/lang/Boolean;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    .line 66
    invoke-super {p0, p1}, Laww;->a(Ljava/lang/Boolean;)V

    .line 69
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Lyv$1;->b:Lyv;

    iget-object v1, p0, Lyv$1;->a:Laim;

    invoke-virtual {v0, v1}, Lyv;->a(Laim;)V

    .line 71
    invoke-static {}, Lyv;->a()Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lyv$1;->a:Laim;

    iget-object v1, v1, Lcom/snapchat/android/model/Mediabryo;->mClientId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    :goto_0
    return-void

    .line 73
    :cond_0
    const-string v0, "SaveSentSnapToCacheTask"

    const-string v1, "Can not upload media because it was not saved to the cache. | Client ID: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lyv$1;->a:Laim;

    iget-object v4, v4, Lcom/snapchat/android/model/Mediabryo;->mClientId:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 75
    iget-object v0, p0, Lyv$1;->b:Lyv;

    invoke-static {v0}, Lyv;->a(Lyv;)Lajn;

    move-result-object v0

    iget-object v1, p0, Lyv$1;->a:Laim;

    sget-object v2, Lcom/snapchat/android/model/MediaMailingMetadata$UploadStatus;->FAILED:Lcom/snapchat/android/model/MediaMailingMetadata$UploadStatus;

    invoke-virtual {v0, v1, v2}, Lajn;->a(Laim;Lcom/snapchat/android/model/MediaMailingMetadata$UploadStatus;)V

    goto :goto_0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 63
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lyv$1;->a(Ljava/lang/Boolean;)V

    return-void
.end method
