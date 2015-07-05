.class public final Lbfw$1;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbfw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/util/List",
        "<",
        "Landroid/graphics/Bitmap;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lbfw;

.field final synthetic val$callback:Lbfx;


# direct methods
.method public constructor <init>(Lbfw;Lbfx;)V
    .locals 0

    .prologue
    .line 36
    iput-object p1, p0, Lbfw$1;->this$0:Lbfw;

    iput-object p2, p0, Lbfw$1;->val$callback:Lbfx;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method private varargs a()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 39
    invoke-static {}, Lbfw;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "profile images - loading from cache"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 40
    const/4 v0, 0x0

    .line 43
    :try_start_0
    iget-object v1, p0, Lbfw$1;->this$0:Lbfw;

    invoke-static {v1}, Lbfw;->b(Lbfw;)Lcom/snapchat/android/util/profileimages/ProfileImageUtils;

    iget-object v1, p0, Lbfw$1;->this$0:Lbfw;

    invoke-static {v1}, Lbfw;->a(Lbfw;)Lawp;

    move-result-object v1

    invoke-static {v1}, Lcom/snapchat/android/util/profileimages/ProfileImageUtils;->b(Lawp;)Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 47
    :goto_0
    return-object v0

    .line 44
    :catch_0
    move-exception v1

    .line 45
    invoke-static {}, Lbfw;->a()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "profile images - Unable to load profile images! Error: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v2, v1, v3}, Lcom/snapchat/android/Timber;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Lbfw$1;->a()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 36
    check-cast p1, Ljava/util/List;

    iget-object v0, p0, Lbfw$1;->val$callback:Lbfx;

    invoke-interface {v0, p1}, Lbfx;->a(Ljava/util/List;)V

    return-void
.end method
