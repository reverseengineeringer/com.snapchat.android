.class final Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment$15;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;


# direct methods
.method constructor <init>(Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;)V
    .locals 0

    .prologue
    .line 401
    iput-object p1, p0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment$15;->a:Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 404
    iget-object v0, p0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment$15;->a:Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;

    invoke-static {v0}, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->c(Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;)Lcom/snapchat/android/analytics/CameraEventAnalytics;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/analytics/CameraEventAnalytics$CameraContext;->CAMERA_BUTTON:Lcom/snapchat/android/analytics/CameraEventAnalytics$CameraContext;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/analytics/CameraEventAnalytics;->a(Lcom/snapchat/android/analytics/CameraEventAnalytics$CameraContext;)V

    .line 405
    iget-object v0, p0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment$15;->a:Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;

    invoke-virtual {v0}, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->onBackPressed()V

    .line 406
    return-void
.end method
