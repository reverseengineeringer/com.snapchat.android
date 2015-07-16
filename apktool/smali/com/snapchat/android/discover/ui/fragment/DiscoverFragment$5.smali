.class final Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;->b(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;


# direct methods
.method constructor <init>(Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 361
    iput-object p1, p0, Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment$5;->b:Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;

    iput-object p2, p0, Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment$5;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 364
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment$5;->b:Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;

    iget-object v1, p0, Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment$5;->a:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;->a(Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;Ljava/util/List;)V

    .line 365
    return-void
.end method
