.class final Lcom/snapchat/android/preview/SnapPreviewFragment$10;
.super Lbgb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/preview/SnapPreviewFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/preview/SnapPreviewFragment;


# direct methods
.method constructor <init>(Lcom/snapchat/android/preview/SnapPreviewFragment;Landroid/content/Context;Landroid/graphics/Bitmap;Lcom/snapchat/android/analytics/CameraEventAnalytics$SaveSnapContext;Lcom/snapchat/android/util/save/SaveMediaNotificationsToShow;)V
    .locals 0

    .prologue
    .line 1388
    iput-object p1, p0, Lcom/snapchat/android/preview/SnapPreviewFragment$10;->a:Lcom/snapchat/android/preview/SnapPreviewFragment;

    invoke-direct {p0, p2, p3, p4, p5}, Lbgb;-><init>(Landroid/content/Context;Landroid/graphics/Bitmap;Lcom/snapchat/android/analytics/CameraEventAnalytics$SaveSnapContext;Lcom/snapchat/android/util/save/SaveMediaNotificationsToShow;)V

    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 1391
    invoke-super {p0, p1}, Lbgb;->b(Ljava/lang/String;)V

    .line 1392
    iget-object v0, p0, Lcom/snapchat/android/preview/SnapPreviewFragment$10;->a:Lcom/snapchat/android/preview/SnapPreviewFragment;

    invoke-static {v0}, Lcom/snapchat/android/preview/SnapPreviewFragment;->z(Lcom/snapchat/android/preview/SnapPreviewFragment;)V

    .line 1393
    return-void
.end method

.method public final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1388
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/snapchat/android/preview/SnapPreviewFragment$10;->b(Ljava/lang/String;)V

    return-void
.end method
