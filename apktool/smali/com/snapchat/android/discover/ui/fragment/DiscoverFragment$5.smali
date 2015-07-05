.class final Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lalw;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;->k()Lalw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;


# direct methods
.method constructor <init>(Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;)V
    .locals 0

    .prologue
    .line 453
    iput-object p1, p0, Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment$5;->a:Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lalx$a;)Z
    .locals 2

    .prologue
    .line 456
    sget-object v0, Lalx;->g:Ljava/util/Set;

    iget-object v1, p1, Lalx$a;->c:Lcom/snapchat/android/notification/AndroidNotificationManager$Type;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final b(Lalx$a;)Z
    .locals 1

    .prologue
    .line 460
    const/4 v0, 0x0

    return v0
.end method
