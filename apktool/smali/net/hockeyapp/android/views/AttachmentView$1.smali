.class final Lnet/hockeyapp/android/views/AttachmentView$1;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/hockeyapp/android/views/AttachmentView;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/net/Uri;)V
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
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lnet/hockeyapp/android/views/AttachmentView;


# direct methods
.method constructor <init>(Lnet/hockeyapp/android/views/AttachmentView;)V
    .locals 0

    .prologue
    .line 106
    iput-object p1, p0, Lnet/hockeyapp/android/views/AttachmentView$1;->a:Lnet/hockeyapp/android/views/AttachmentView;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lnet/hockeyapp/android/views/AttachmentView$1;->a:Lnet/hockeyapp/android/views/AttachmentView;

    invoke-static {v0}, Lnet/hockeyapp/android/views/AttachmentView;->a(Lnet/hockeyapp/android/views/AttachmentView;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 106
    check-cast p1, Landroid/graphics/Bitmap;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lnet/hockeyapp/android/views/AttachmentView$1;->a:Lnet/hockeyapp/android/views/AttachmentView;

    invoke-static {v0, p1}, Lnet/hockeyapp/android/views/AttachmentView;->a(Lnet/hockeyapp/android/views/AttachmentView;Landroid/graphics/Bitmap;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lnet/hockeyapp/android/views/AttachmentView$1;->a:Lnet/hockeyapp/android/views/AttachmentView;

    invoke-static {v0}, Lnet/hockeyapp/android/views/AttachmentView;->b(Lnet/hockeyapp/android/views/AttachmentView;)V

    goto :goto_0
.end method
