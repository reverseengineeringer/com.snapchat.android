.class final Lawx$1;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lawx;->b(Laim;)V
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
.field final synthetic this$0:Lawx;

.field final synthetic val$snapbryo:Laim;


# direct methods
.method constructor <init>(Lawx;Laim;)V
    .locals 0

    .prologue
    .line 81
    iput-object p1, p0, Lawx$1;->this$0:Lawx;

    iput-object p2, p0, Lawx$1;->val$snapbryo:Laim;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 81
    iget-object v0, p0, Lawx$1;->val$snapbryo:Laim;

    iget-object v1, v0, Lcom/snapchat/android/model/Mediabryo;->mClientId:Ljava/lang/String;

    invoke-static {v0}, Laut;->a(Lcom/snapchat/android/model/Mediabryo;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lawq;->MY_SNAP_IMAGE_CACHE:Lawp;

    invoke-virtual {v0, v1}, Lawp;->c(Ljava/lang/String;)V

    :goto_0
    sget-object v0, Lawq;->MY_STORY_SNAP_THUMBNAIL_CACHE:Lawp;

    invoke-virtual {v0, v1}, Lawp;->c(Ljava/lang/String;)V

    sget-object v0, Lawq;->MY_SNAP_VIDEO_CACHE:Lawp;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lawp;->a(Z)V

    const/4 v0, 0x0

    return-object v0

    :cond_0
    sget-object v0, Lawq;->MY_SNAP_VIDEO_CACHE:Lawp;

    invoke-virtual {v0, v1}, Lawp;->c(Ljava/lang/String;)V

    goto :goto_0
.end method
