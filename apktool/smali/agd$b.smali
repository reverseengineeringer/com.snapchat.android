.class public final Lagd$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lagd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public a:Landroid/widget/TextView;

.field public b:Landroid/widget/TextView;

.field public c:Lcom/snapchat/android/model/chat/ChatConversation;

.field public d:Landroid/animation/Animator;

.field public e:Z

.field public f:Lcom/snapchat/android/ui/EmojiTextView;

.field g:Landroid/widget/FrameLayout;

.field h:Landroid/widget/ImageView;

.field i:Lcom/snapchat/android/ui/FeedReplayAnimationView;

.field j:Landroid/widget/ProgressBar;

.field k:Landroid/widget/TextView;

.field l:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 385
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 400
    iget-object v0, p0, Lagd$b;->a:Landroid/widget/TextView;

    const/16 v1, 0x50

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 401
    iget-object v0, p0, Lagd$b;->a:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTranslationY(F)V

    .line 402
    iget-object v0, p0, Lagd$b;->b:Landroid/widget/TextView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 403
    iget-object v0, p0, Lagd$b;->b:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 404
    return-void
.end method

.method public final b()V
    .locals 2

    .prologue
    .line 407
    iget-object v0, p0, Lagd$b;->a:Landroid/widget/TextView;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 408
    iget-object v0, p0, Lagd$b;->a:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTranslationY(F)V

    .line 409
    iget-object v0, p0, Lagd$b;->b:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 410
    return-void
.end method
