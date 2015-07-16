.class final Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment$12;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbhr$a;


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
    .line 384
    iput-object p1, p0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment$12;->a:Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 387
    iget-object v0, p0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment$12;->a:Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;

    invoke-static {v0}, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->b(Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;)Lbhr;

    move-result-object v0

    invoke-virtual {v0}, Lbhr;->a()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v1, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment$12$1;

    invoke-direct {v1, p0}, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment$12$1;-><init>(Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment$12;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 394
    return-void
.end method
