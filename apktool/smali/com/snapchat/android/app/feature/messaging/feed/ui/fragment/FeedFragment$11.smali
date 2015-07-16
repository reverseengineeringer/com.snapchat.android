.class final Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment$11;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->a(Lvs;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Landroid/view/animation/TranslateAnimation;

.field final synthetic c:Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;


# direct methods
.method constructor <init>(Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;Landroid/view/View;Landroid/view/animation/TranslateAnimation;)V
    .locals 0

    .prologue
    .line 1159
    iput-object p1, p0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment$11;->c:Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;

    iput-object p2, p0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment$11;->a:Landroid/view/View;

    iput-object p3, p0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment$11;->b:Landroid/view/animation/TranslateAnimation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 1162
    iget-object v0, p0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment$11;->a:Landroid/view/View;

    iget-object v1, p0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment$11;->b:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1163
    return-void
.end method
