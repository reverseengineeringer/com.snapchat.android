.class public final Lbgw$1;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbgw;
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
.field final synthetic this$0:Lbgw;

.field final synthetic val$callback:Lbgx;


# direct methods
.method public constructor <init>(Lbgw;Lbgx;)V
    .locals 0

    .prologue
    .line 36
    iput-object p1, p0, Lbgw$1;->this$0:Lbgw;

    iput-object p2, p0, Lbgw$1;->val$callback:Lbgx;

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
    .line 39
    invoke-static {}, Lbgw;->a()Ljava/lang/String;

    .line 40
    const/4 v0, 0x0

    .line 43
    :try_start_0
    iget-object v1, p0, Lbgw$1;->this$0:Lbgw;

    invoke-static {v1}, Lbgw;->b(Lbgw;)Lcom/snapchat/android/util/profileimages/ProfileImageUtils;

    iget-object v1, p0, Lbgw$1;->this$0:Lbgw;

    invoke-static {v1}, Lbgw;->a(Lbgw;)Laxn;

    move-result-object v1

    invoke-static {v1}, Lcom/snapchat/android/util/profileimages/ProfileImageUtils;->b(Laxn;)Ljava/util/List;
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
    invoke-static {}, Lbgw;->a()Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "profile images - Unable to load profile images! Error: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Lbgw$1;->a()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 36
    check-cast p1, Ljava/util/List;

    iget-object v0, p0, Lbgw$1;->val$callback:Lbgx;

    invoke-interface {v0, p1}, Lbgx;->a(Ljava/util/List;)V

    return-void
.end method
