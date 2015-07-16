.class final Lagf$3$1;
.super Lagh;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lagf$3;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lagf$3;


# direct methods
.method constructor <init>(Lagf$3;Landroid/content/Context;Lcom/snapchat/android/model/Friend;Lil;)V
    .locals 0

    .prologue
    .line 703
    iput-object p1, p0, Lagf$3$1;->a:Lagf$3;

    invoke-direct {p0, p2, p3, p4}, Lagh;-><init>(Landroid/content/Context;Lcom/snapchat/android/model/Friend;Lil;)V

    return-void
.end method


# virtual methods
.method protected final a(Lcom/snapchat/android/model/FriendAction$BlockReason;)V
    .locals 7

    .prologue
    .line 706
    iget-object v0, p0, Lagf$3$1;->a:Lagf$3;

    iget-object v0, v0, Lagf$3;->b:Lagf;

    iget-object v0, v0, Lagf;->H:Laga;

    iget-object v1, p0, Lagf$3$1;->a:Lagf$3;

    iget-object v1, v1, Lagf$3;->b:Lagf;

    iget-object v2, p0, Lagf$3$1;->a:Lagf$3;

    iget-object v2, v2, Lagf$3;->a:Lcom/snapchat/android/model/Friend;

    sget-object v3, Lcom/snapchat/android/model/FriendAction;->BLOCK:Lcom/snapchat/android/model/FriendAction;

    iget-object v4, p0, Lagf$3$1;->a:Lagf$3;

    iget-object v5, v4, Lagf$3;->b:Lagf;

    sget-object v6, Lil;->SWIPE_BUTTON:Lil;

    move-object v4, p1

    invoke-virtual/range {v0 .. v6}, Laga;->a(Lagf;Lcom/snapchat/android/model/Friend;Lcom/snapchat/android/model/FriendAction;Lcom/snapchat/android/model/FriendAction$BlockReason;Lqg$a;Lil;)V

    .line 709
    return-void
.end method
