.class final Lbfv$1;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbfv;
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
        "Ljava/util/List",
        "<",
        "Landroid/graphics/Bitmap;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lbfv;

.field final synthetic val$callback:Lbfx;


# direct methods
.method constructor <init>(Lbfv;Lbfx;)V
    .locals 0

    .prologue
    .line 38
    iput-object p1, p0, Lbfv$1;->this$0:Lbfv;

    iput-object p2, p0, Lbfv$1;->val$callback:Lbfx;

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

    .line 41
    invoke-static {}, Lbfv;->a()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "friends profile images - loading from cache for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lbfv$1;->this$0:Lbfv;

    invoke-static {v2}, Lbfv;->a(Lbfv;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 42
    const/4 v0, 0x0

    .line 45
    :try_start_0
    iget-object v1, p0, Lbfv$1;->this$0:Lbfv;

    invoke-static {v1}, Lbfv;->c(Lbfv;)Lcom/snapchat/android/util/profileimages/ProfileImageUtils;

    iget-object v1, p0, Lbfv$1;->this$0:Lbfv;

    invoke-static {v1}, Lbfv;->b(Lbfv;)Lawp;

    move-result-object v1

    iget-object v2, p0, Lbfv$1;->this$0:Lbfv;

    invoke-static {v2}, Lbfv;->a(Lbfv;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/snapchat/android/util/profileimages/ProfileImageUtils;->a(Lawp;Ljava/lang/String;)Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 49
    :goto_0
    return-object v0

    .line 46
    :catch_0
    move-exception v1

    .line 47
    invoke-static {}, Lbfv;->a()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "friends profile images - Unable to load profile images for "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lbfv$1;->this$0:Lbfv;

    invoke-static {v4}, Lbfv;->a(Lbfv;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "! Error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

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
    .line 38
    invoke-direct {p0}, Lbfv$1;->a()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 38
    check-cast p1, Ljava/util/List;

    iget-object v0, p0, Lbfv$1;->val$callback:Lbfx;

    invoke-interface {v0, p1}, Lbfx;->a(Ljava/util/List;)V

    return-void
.end method
