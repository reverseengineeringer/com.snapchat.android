.class final Laeh$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/snapchat/android/discover/ui/OpenChannelAnimationView$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Laeh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Laeh;


# direct methods
.method constructor <init>(Laeh;)V
    .locals 0

    .prologue
    .line 104
    iput-object p1, p0, Laeh$1;->a:Laeh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/snapchat/android/discover/ui/ChannelView;)V
    .locals 4

    .prologue
    .line 110
    iget-object v0, p0, Laeh$1;->a:Laeh;

    iget-object v0, v0, Laeh;->a:Lcom/snapchat/android/discover/ui/OpenChannelAnimationView;

    new-instance v1, Laeh$1$1;

    invoke-direct {v1, p0}, Laeh$1$1;-><init>(Laeh$1;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Lcom/snapchat/android/discover/ui/OpenChannelAnimationView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 117
    iget-object v0, p0, Laeh$1;->a:Laeh;

    iget-object v0, v0, Laeh;->a:Lcom/snapchat/android/discover/ui/OpenChannelAnimationView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/snapchat/android/discover/ui/OpenChannelAnimationView;->setVisibility(I)V

    .line 118
    iget-object v0, p0, Laeh$1;->a:Laeh;

    const/4 v1, 0x0

    iput-object v1, v0, Laeh;->a:Lcom/snapchat/android/discover/ui/OpenChannelAnimationView;

    .line 119
    return-void
.end method
