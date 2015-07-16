.class public final Lzr$1;
.super Laxu;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Laji;

.field final synthetic b:Lzr;


# direct methods
.method public constructor <init>(Lzr;Laji;)V
    .locals 0

    .prologue
    .line 63
    iput-object p1, p0, Lzr$1;->b:Lzr;

    iput-object p2, p0, Lzr$1;->a:Laji;

    invoke-direct {p0}, Laxu;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a(Ljava/lang/Boolean;)V
    .locals 3
    .param p1    # Ljava/lang/Boolean;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    .line 66
    invoke-super {p0, p1}, Laxu;->a(Ljava/lang/Boolean;)V

    .line 69
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Lzr$1;->b:Lzr;

    iget-object v1, p0, Lzr$1;->a:Laji;

    invoke-virtual {v0, v1}, Lzr;->a(Laji;)V

    .line 71
    invoke-static {}, Lzr;->a()Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lzr$1;->a:Laji;

    iget-object v1, v1, Lcom/snapchat/android/model/Mediabryo;->mClientId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    :goto_0
    return-void

    .line 73
    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lzr$1;->a:Laji;

    iget-object v2, v2, Lcom/snapchat/android/model/Mediabryo;->mClientId:Ljava/lang/String;

    aput-object v2, v0, v1

    .line 75
    iget-object v0, p0, Lzr$1;->b:Lzr;

    invoke-static {v0}, Lzr;->a(Lzr;)Laki;

    move-result-object v0

    iget-object v1, p0, Lzr$1;->a:Laji;

    sget-object v2, Lcom/snapchat/android/model/MediaMailingMetadata$UploadStatus;->FAILED:Lcom/snapchat/android/model/MediaMailingMetadata$UploadStatus;

    invoke-virtual {v0, v1, v2}, Laki;->a(Laji;Lcom/snapchat/android/model/MediaMailingMetadata$UploadStatus;)V

    goto :goto_0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 63
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lzr$1;->a(Ljava/lang/Boolean;)V

    return-void
.end method
