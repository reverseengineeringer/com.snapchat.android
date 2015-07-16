.class final Lzp$2;
.super Laxu;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lzp;->b(Laji;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Laji;

.field final synthetic c:Z

.field final synthetic d:Lzp;


# direct methods
.method constructor <init>(Lzp;ZLaji;Z)V
    .locals 0

    .prologue
    .line 366
    iput-object p1, p0, Lzp$2;->d:Lzp;

    iput-boolean p2, p0, Lzp$2;->a:Z

    iput-object p3, p0, Lzp$2;->b:Laji;

    iput-boolean p4, p0, Lzp$2;->c:Z

    invoke-direct {p0}, Laxu;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a(Ljava/lang/Boolean;)V
    .locals 5
    .param p1    # Ljava/lang/Boolean;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 379
    invoke-super {p0, p1}, Laxu;->a(Ljava/lang/Boolean;)V

    .line 382
    iget-boolean v0, p0, Lzp$2;->a:Z

    if-eqz v0, :cond_0

    .line 383
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 384
    iget-object v0, p0, Lzp$2;->d:Lzp;

    iget-object v1, p0, Lzp$2;->b:Laji;

    invoke-virtual {v0, v1}, Lzp;->g(Laji;)V

    .line 391
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lzp$2;->c:Z

    if-eqz v0, :cond_1

    .line 392
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 393
    iget-object v0, p0, Lzp$2;->d:Lzp;

    iget-object v1, p0, Lzp$2;->b:Laji;

    invoke-virtual {v0, v1}, Lzp;->i(Laji;)V

    .line 400
    :cond_1
    :goto_1
    return-void

    .line 386
    :cond_2
    new-array v0, v4, [Ljava/lang/Object;

    iget-object v1, p0, Lzp$2;->b:Laji;

    iget-object v1, v1, Lcom/snapchat/android/model/Mediabryo;->mClientId:Ljava/lang/String;

    aput-object v1, v0, v3

    .line 388
    iget-object v0, p0, Lzp$2;->d:Lzp;

    iget-object v0, v0, Lzp;->a:Laki;

    iget-object v1, p0, Lzp$2;->b:Laji;

    sget-object v2, Lcom/snapchat/android/model/MediaMailingMetadata$SendStatus;->FAILED:Lcom/snapchat/android/model/MediaMailingMetadata$SendStatus;

    invoke-virtual {v0, v1, v2}, Laki;->a(Laji;Lcom/snapchat/android/model/MediaMailingMetadata$SendStatus;)V

    goto :goto_0

    .line 395
    :cond_3
    new-array v0, v4, [Ljava/lang/Object;

    iget-object v1, p0, Lzp$2;->b:Laji;

    iget-object v1, v1, Lcom/snapchat/android/model/Mediabryo;->mClientId:Ljava/lang/String;

    aput-object v1, v0, v3

    .line 397
    iget-object v0, p0, Lzp$2;->d:Lzp;

    iget-object v0, v0, Lzp;->a:Laki;

    iget-object v1, p0, Lzp$2;->b:Laji;

    sget-object v2, Lcom/snapchat/android/model/MediaMailingMetadata$PostStatus;->FAILED:Lcom/snapchat/android/model/MediaMailingMetadata$PostStatus;

    invoke-virtual {v0, v1, v2}, Laki;->a(Laji;Lcom/snapchat/android/model/MediaMailingMetadata$PostStatus;)V

    goto :goto_1
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 366
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lzp$2;->a(Ljava/lang/Boolean;)V

    return-void
.end method

.method protected final onPreExecute()V
    .locals 2

    .prologue
    .line 369
    invoke-super {p0}, Laxu;->onPreExecute()V

    .line 370
    iget-boolean v0, p0, Lzp$2;->a:Z

    if-eqz v0, :cond_0

    .line 371
    iget-object v0, p0, Lzp$2;->d:Lzp;

    iget-object v1, p0, Lzp$2;->b:Laji;

    invoke-virtual {v0, v1}, Lzp;->f(Laji;)V

    .line 373
    :cond_0
    iget-boolean v0, p0, Lzp$2;->c:Z

    if-eqz v0, :cond_1

    .line 374
    iget-object v0, p0, Lzp$2;->d:Lzp;

    iget-object v1, p0, Lzp$2;->b:Laji;

    invoke-virtual {v0, v1}, Lzp;->h(Laji;)V

    .line 376
    :cond_1
    return-void
.end method
