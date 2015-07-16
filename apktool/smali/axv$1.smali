.class final Laxv$1;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laxv;->b(Laji;)V
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
.field final synthetic this$0:Laxv;

.field final synthetic val$snapbryo:Laji;


# direct methods
.method constructor <init>(Laxv;Laji;)V
    .locals 0

    .prologue
    .line 81
    iput-object p1, p0, Laxv$1;->this$0:Laxv;

    iput-object p2, p0, Laxv$1;->val$snapbryo:Laji;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 81
    iget-object v0, p0, Laxv$1;->val$snapbryo:Laji;

    iget-object v1, v0, Lcom/snapchat/android/model/Mediabryo;->mClientId:Ljava/lang/String;

    invoke-static {v0}, Lavr;->a(Lcom/snapchat/android/model/Mediabryo;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Laxo;->MY_SNAP_IMAGE_CACHE:Laxn;

    invoke-virtual {v0, v1}, Laxn;->c(Ljava/lang/String;)V

    :goto_0
    sget-object v0, Laxo;->MY_STORY_SNAP_THUMBNAIL_CACHE:Laxn;

    invoke-virtual {v0, v1}, Laxn;->c(Ljava/lang/String;)V

    sget-object v0, Laxo;->MY_SNAP_VIDEO_CACHE:Laxn;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Laxn;->a(Z)V

    const/4 v0, 0x0

    return-object v0

    :cond_0
    sget-object v0, Laxo;->MY_SNAP_VIDEO_CACHE:Laxn;

    invoke-virtual {v0, v1}, Laxn;->c(Ljava/lang/String;)V

    goto :goto_0
.end method
