.class final Lcom/snapchat/android/fragments/stories/StoriesFragment$19$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/fragments/stories/StoriesFragment$19;->a(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/fragments/stories/StoriesFragment$19;


# direct methods
.method constructor <init>(Lcom/snapchat/android/fragments/stories/StoriesFragment$19;)V
    .locals 0

    .prologue
    .line 564
    iput-object p1, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment$19$1;->a:Lcom/snapchat/android/fragments/stories/StoriesFragment$19;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 567
    invoke-static {}, Lbbo;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v1, Lbev;

    new-instance v2, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;

    invoke-direct {v2}, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;-><init>()V

    invoke-direct {v1, v2}, Lbev;-><init>(Lcom/snapchat/android/util/fragment/SnapchatFragment;)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 568
    return-void
.end method
