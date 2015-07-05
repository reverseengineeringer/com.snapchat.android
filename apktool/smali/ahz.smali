.class public final Lahz;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lalb$a;


# instance fields
.field private final a:Lawp;

.field private final b:Laif;


# direct methods
.method public constructor <init>(Lawp;Laif;)V
    .locals 1
    .param p1    # Lawp;
        .annotation build Lcgb;
        .end annotation
    .end param
    .param p2    # Laif;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    invoke-static {p1}, Lck;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lawp;

    iput-object v0, p0, Lahz;->a:Lawp;

    .line 27
    invoke-static {p2}, Lck;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laif;

    iput-object v0, p0, Lahz;->b:Laif;

    .line 28
    return-void
.end method


# virtual methods
.method public final a(Lalc;)V
    .locals 3

    .prologue
    .line 65
    iget-object v0, p0, Lahz;->b:Laif;

    iget-object v1, p1, Lalc;->d:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Laif;->a(Ljava/lang/String;Z)V

    .line 66
    return-void
.end method

.method public final a(Lalc;Lbfl;Luc;)V
    .locals 4
    .annotation build Lcaq;
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 34
    if-nez p3, :cond_0

    .line 35
    const-string v0, "ResourceDownloadHandler"

    const-string v1, "NetworkResult is null"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 36
    iget-object v0, p0, Lahz;->b:Laif;

    iget-object v1, p1, Lalc;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Laif;->a(Ljava/lang/String;Z)V

    .line 61
    :goto_0
    return-void

    .line 40
    :cond_0
    invoke-virtual {p3}, Luc;->d()Z

    move-result v0

    if-nez v0, :cond_1

    .line 41
    const-string v0, "ResourceDownloadHandler"

    const-string v1, "NetworkResult was unsuccessful"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 42
    iget-object v0, p0, Lahz;->b:Laif;

    iget-object v1, p1, Lalc;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Laif;->a(Ljava/lang/String;Z)V

    goto :goto_0

    .line 46
    :cond_1
    if-eqz p2, :cond_2

    iget v0, p2, Lbfl;->mSize:I

    if-gtz v0, :cond_3

    .line 47
    :cond_2
    const-string v0, "ResourceDownloadHandler"

    const-string v1, "Buffer is null or empty"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 48
    iget-object v0, p0, Lahz;->b:Laif;

    iget-object v1, p1, Lalc;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Laif;->a(Ljava/lang/String;Z)V

    goto :goto_0

    .line 52
    :cond_3
    iget-object v1, p1, Lalc;->d:Ljava/lang/String;

    .line 54
    :try_start_0
    iget-object v0, p0, Lahz;->a:Lawp;

    iget-object v2, p2, Lbfl;->mBuffer:[B

    invoke-virtual {v0, v1, v2}, Lawp;->a(Ljava/lang/String;[B)V
    :try_end_0
    .catch Laws; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    :goto_1
    iget-object v0, p0, Lahz;->b:Laif;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Laif;->a(Ljava/lang/String;Z)V

    goto :goto_0

    .line 55
    :catch_0
    move-exception v0

    .line 56
    const-string v2, "ResourceDownloadHandler"

    invoke-static {v2, v0}, Lcom/snapchat/android/Timber;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 57
    iget-object v0, p0, Lahz;->b:Laif;

    invoke-virtual {v0, v1, v3}, Laif;->a(Ljava/lang/String;Z)V

    goto :goto_1
.end method
