.class final Lagf$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lagf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/model/Friend;

.field final synthetic b:Lagf;


# direct methods
.method constructor <init>(Lagf;Lcom/snapchat/android/model/Friend;)V
    .locals 0

    .prologue
    .line 732
    iput-object p1, p0, Lagf$5;->b:Lagf;

    iput-object p2, p0, Lagf$5;->a:Lcom/snapchat/android/model/Friend;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 7

    .prologue
    .line 735
    iget-object v0, p0, Lagf$5;->b:Lagf;

    iget-object v0, v0, Lagf;->H:Laga;

    iget-object v1, p0, Lagf$5;->b:Lagf;

    iget-object v2, p0, Lagf$5;->a:Lcom/snapchat/android/model/Friend;

    sget-object v3, Lcom/snapchat/android/model/FriendAction;->IGNORE:Lcom/snapchat/android/model/FriendAction;

    const/4 v4, 0x0

    iget-object v5, p0, Lagf$5;->b:Lagf;

    sget-object v6, Lil;->SWIPE_BUTTON:Lil;

    invoke-virtual/range {v0 .. v6}, Laga;->a(Lagf;Lcom/snapchat/android/model/Friend;Lcom/snapchat/android/model/FriendAction;Lcom/snapchat/android/model/FriendAction$BlockReason;Lqg$a;Lil;)V

    .line 738
    return-void
.end method
