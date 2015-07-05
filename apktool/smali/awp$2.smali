.class final Lawp$2;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lawp;
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
.field final synthetic this$0:Lawp;


# direct methods
.method constructor <init>(Lawp;)V
    .locals 0

    .prologue
    .line 403
    iput-object p1, p0, Lawp$2;->this$0:Lawp;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method private varargs a()Ljava/lang/Void;
    .locals 11

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 409
    :try_start_0
    iget-object v0, p0, Lawp$2;->this$0:Lawp;

    iget-object v0, v0, Lawp;->mCacheType:Lcom/snapchat/android/util/cache/CacheType;

    invoke-virtual {v0}, Lcom/snapchat/android/util/cache/CacheType;->getDirectory()Ljava/io/File;
    :try_end_0
    .catch Laws; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 414
    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 415
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    .line 416
    if-nez v3, :cond_1

    .line 424
    :cond_0
    return-object v2

    .line 411
    :catch_0
    move-exception v0

    move-object v0, v2

    goto :goto_0

    .line 419
    :cond_1
    array-length v4, v3

    move v0, v1

    :goto_1
    if-ge v0, v4, :cond_0

    aget-object v5, v3, v0

    .line 420
    const-string v6, "Cache"

    const-string v7, "!!! [%s] deleting [Uri: %s]"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    iget-object v9, p0, Lawp$2;->this$0:Lawp;

    iget-object v9, v9, Lawp;->mCacheType:Lcom/snapchat/android/util/cache/CacheType;

    invoke-virtual {v9}, Lcom/snapchat/android/util/cache/CacheType;->name()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v1

    const/4 v9, 0x1

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v6, v7, v8}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 421
    invoke-static {v5}, Lawt;->a(Ljava/io/File;)V

    .line 419
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 403
    invoke-direct {p0}, Lawp$2;->a()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
