.class final Lcom/snapchat/android/discover/ui/DiscoverButtonView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/discover/ui/DiscoverButtonView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/discover/ui/DiscoverButtonView;


# direct methods
.method constructor <init>(Lcom/snapchat/android/discover/ui/DiscoverButtonView;)V
    .locals 0

    .prologue
    .line 39
    iput-object p1, p0, Lcom/snapchat/android/discover/ui/DiscoverButtonView$1;->a:Lcom/snapchat/android/discover/ui/DiscoverButtonView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 42
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DiscoverButtonView$1;->a:Lcom/snapchat/android/discover/ui/DiscoverButtonView;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/snapchat/android/discover/ui/DiscoverButtonView;->a(Lcom/snapchat/android/discover/ui/DiscoverButtonView;J)J

    .line 43
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DiscoverButtonView$1;->a:Lcom/snapchat/android/discover/ui/DiscoverButtonView;

    invoke-virtual {v0}, Lcom/snapchat/android/discover/ui/DiscoverButtonView;->invalidate()V

    .line 44
    return-void
.end method
