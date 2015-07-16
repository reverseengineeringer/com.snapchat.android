.class final Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment$19;
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
    .line 436
    iput-object p1, p0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment$19;->a:Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 439
    iget-object v0, p0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment$19;->a:Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;

    invoke-static {v0}, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->g(Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;)Lbhr;

    move-result-object v0

    invoke-virtual {v0}, Lbhr;->a()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    new-instance v1, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment$19$1;

    invoke-direct {v1, p0}, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment$19$1;-><init>(Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment$19;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 456
    return-void
.end method
