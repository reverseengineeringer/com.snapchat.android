.class final Laxn$2;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Laxn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Laxn;


# direct methods
.method constructor <init>(Laxn;)V
    .locals 0

    .prologue
    .line 440
    iput-object p1, p0, Laxn$2;->this$0:Laxn;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method private varargs a()Ljava/lang/Void;
    .locals 9

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 446
    :try_start_0
    iget-object v0, p0, Laxn$2;->this$0:Laxn;

    iget-object v0, v0, Laxn;->mCacheType:Lcom/snapchat/android/util/cache/CacheType;

    invoke-virtual {v0}, Lcom/snapchat/android/util/cache/CacheType;->getDirectory()Ljava/io/File;
    :try_end_0
    .catch Laxq; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 451
    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 452
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    .line 453
    if-nez v3, :cond_1

    .line 461
    :cond_0
    return-object v2

    .line 448
    :catch_0
    move-exception v0

    move-object v0, v2

    goto :goto_0

    .line 456
    :cond_1
    array-length v4, v3

    move v0, v1

    :goto_1
    if-ge v0, v4, :cond_0

    aget-object v5, v3, v0

    .line 457
    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    iget-object v7, p0, Laxn$2;->this$0:Laxn;

    iget-object v7, v7, Laxn;->mCacheType:Lcom/snapchat/android/util/cache/CacheType;

    invoke-virtual {v7}, Lcom/snapchat/android/util/cache/CacheType;->name()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v1

    const/4 v7, 0x1

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    .line 458
    invoke-static {v5}, Laxr;->a(Ljava/io/File;)V

    .line 456
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 440
    invoke-direct {p0}, Laxn$2;->a()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
