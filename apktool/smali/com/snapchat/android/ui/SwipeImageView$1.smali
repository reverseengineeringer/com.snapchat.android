.class final Lcom/snapchat/android/ui/SwipeImageView$1;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/ui/SwipeImageView;->a()V
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
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/snapchat/android/ui/SwipeImageView;


# direct methods
.method constructor <init>(Lcom/snapchat/android/ui/SwipeImageView;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 188
    iput-object p1, p0, Lcom/snapchat/android/ui/SwipeImageView$1;->b:Lcom/snapchat/android/ui/SwipeImageView;

    iput-object p2, p0, Lcom/snapchat/android/ui/SwipeImageView$1;->a:Ljava/util/List;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .prologue
    .line 188
    iget-object v0, p0, Lcom/snapchat/android/ui/SwipeImageView$1;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lasm;

    iget-object v1, p0, Lcom/snapchat/android/ui/SwipeImageView$1;->b:Lcom/snapchat/android/ui/SwipeImageView;

    invoke-static {v1}, Lcom/snapchat/android/ui/SwipeImageView;->a(Lcom/snapchat/android/ui/SwipeImageView;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_1
    iget-object v3, p0, Lcom/snapchat/android/ui/SwipeImageView$1;->b:Lcom/snapchat/android/ui/SwipeImageView;

    invoke-static {v3}, Lcom/snapchat/android/ui/SwipeImageView;->b(Lcom/snapchat/android/ui/SwipeImageView;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lasm;->a(ZLandroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/snapchat/android/ui/SwipeImageView$1;->b:Lcom/snapchat/android/ui/SwipeImageView;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/SwipeImageView;->postInvalidate()V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method
