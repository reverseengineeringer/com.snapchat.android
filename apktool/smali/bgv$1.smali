.class final Lbgv$1;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbgv;
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
.field final synthetic this$0:Lbgv;

.field final synthetic val$callback:Lbgx;


# direct methods
.method constructor <init>(Lbgv;Lbgx;)V
    .locals 0

    .prologue
    .line 38
    iput-object p1, p0, Lbgv$1;->this$0:Lbgv;

    iput-object p2, p0, Lbgv$1;->val$callback:Lbgx;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method private varargs a()Ljava/util/List;
    .locals 4
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
    .line 41
    invoke-static {}, Lbgv;->a()Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "friends profile images - loading from cache for "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lbgv$1;->this$0:Lbgv;

    invoke-static {v1}, Lbgv;->a(Lbgv;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    const/4 v0, 0x0

    .line 45
    :try_start_0
    iget-object v1, p0, Lbgv$1;->this$0:Lbgv;

    invoke-static {v1}, Lbgv;->c(Lbgv;)Lcom/snapchat/android/util/profileimages/ProfileImageUtils;

    iget-object v1, p0, Lbgv$1;->this$0:Lbgv;

    invoke-static {v1}, Lbgv;->b(Lbgv;)Laxn;

    move-result-object v1

    iget-object v2, p0, Lbgv$1;->this$0:Lbgv;

    invoke-static {v2}, Lbgv;->a(Lbgv;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/snapchat/android/util/profileimages/ProfileImageUtils;->a(Laxn;Ljava/lang/String;)Ljava/util/List;
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
    invoke-static {}, Lbgv;->a()Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "friends profile images - Unable to load profile images for "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lbgv$1;->this$0:Lbgv;

    invoke-static {v3}, Lbgv;->a(Lbgv;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "! Error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Lbgv$1;->a()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 38
    check-cast p1, Ljava/util/List;

    iget-object v0, p0, Lbgv$1;->val$callback:Lbgx;

    invoke-interface {v0, p1}, Lbgx;->a(Ljava/util/List;)V

    return-void
.end method
