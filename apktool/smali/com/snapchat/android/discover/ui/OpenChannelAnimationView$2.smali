.class public final Lcom/snapchat/android/discover/ui/OpenChannelAnimationView$2;
.super Lcom/snapchat/android/discover/ui/OpenChannelAnimationView$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/discover/ui/OpenChannelAnimationView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/discover/ui/OpenChannelAnimationView$a;

.field final synthetic b:Lcom/snapchat/android/discover/ui/ChannelView;

.field final synthetic c:Lcom/snapchat/android/discover/ui/OpenChannelAnimationView;


# direct methods
.method public constructor <init>(Lcom/snapchat/android/discover/ui/OpenChannelAnimationView;Lcom/snapchat/android/discover/ui/OpenChannelAnimationView$a;Lcom/snapchat/android/discover/ui/ChannelView;)V
    .locals 1

    .prologue
    .line 110
    iput-object p1, p0, Lcom/snapchat/android/discover/ui/OpenChannelAnimationView$2;->c:Lcom/snapchat/android/discover/ui/OpenChannelAnimationView;

    iput-object p2, p0, Lcom/snapchat/android/discover/ui/OpenChannelAnimationView$2;->a:Lcom/snapchat/android/discover/ui/OpenChannelAnimationView$a;

    iput-object p3, p0, Lcom/snapchat/android/discover/ui/OpenChannelAnimationView$2;->b:Lcom/snapchat/android/discover/ui/ChannelView;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/snapchat/android/discover/ui/OpenChannelAnimationView$b;-><init>(Lcom/snapchat/android/discover/ui/OpenChannelAnimationView;B)V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .prologue
    .line 113
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/OpenChannelAnimationView$2;->c:Lcom/snapchat/android/discover/ui/OpenChannelAnimationView;

    invoke-static {v0}, Lcom/snapchat/android/discover/ui/OpenChannelAnimationView;->a(Lcom/snapchat/android/discover/ui/OpenChannelAnimationView;)Z

    .line 114
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/OpenChannelAnimationView$2;->a:Lcom/snapchat/android/discover/ui/OpenChannelAnimationView$a;

    if-eqz v0, :cond_0

    .line 115
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/OpenChannelAnimationView$2;->a:Lcom/snapchat/android/discover/ui/OpenChannelAnimationView$a;

    iget-object v1, p0, Lcom/snapchat/android/discover/ui/OpenChannelAnimationView$2;->b:Lcom/snapchat/android/discover/ui/ChannelView;

    invoke-interface {v0, v1}, Lcom/snapchat/android/discover/ui/OpenChannelAnimationView$a;->a(Lcom/snapchat/android/discover/ui/ChannelView;)V

    .line 117
    :cond_0
    return-void
.end method
