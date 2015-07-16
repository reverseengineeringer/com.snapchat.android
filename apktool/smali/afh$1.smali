.class final Lafh$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/snapchat/android/discover/ui/OpenChannelAnimationView$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lafh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/discover/ui/OpenChannelAnimationView;

.field final synthetic b:Lafh;


# direct methods
.method constructor <init>(Lafh;Lcom/snapchat/android/discover/ui/OpenChannelAnimationView;)V
    .locals 0

    .prologue
    .line 110
    iput-object p1, p0, Lafh$1;->b:Lafh;

    iput-object p2, p0, Lafh$1;->a:Lcom/snapchat/android/discover/ui/OpenChannelAnimationView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/snapchat/android/discover/ui/ChannelView;)V
    .locals 4

    .prologue
    .line 116
    iget-object v0, p0, Lafh$1;->a:Lcom/snapchat/android/discover/ui/OpenChannelAnimationView;

    new-instance v1, Lafh$1$1;

    invoke-direct {v1, p0}, Lafh$1$1;-><init>(Lafh$1;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Lcom/snapchat/android/discover/ui/OpenChannelAnimationView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 124
    iget-object v0, p0, Lafh$1;->a:Lcom/snapchat/android/discover/ui/OpenChannelAnimationView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/snapchat/android/discover/ui/OpenChannelAnimationView;->setVisibility(I)V

    .line 125
    iget-object v0, p0, Lafh$1;->b:Lafh;

    const/4 v1, 0x0

    iput-object v1, v0, Lafh;->b:Lcom/snapchat/android/discover/ui/OpenChannelAnimationView;

    .line 126
    return-void
.end method
