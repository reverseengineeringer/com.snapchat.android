.class final Laff$3$1;
.super Lafh;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laff$3;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Laff$3;


# direct methods
.method constructor <init>(Laff$3;Landroid/content/Context;Lcom/snapchat/android/model/Friend;Lic;)V
    .locals 0

    .prologue
    .line 672
    iput-object p1, p0, Laff$3$1;->a:Laff$3;

    invoke-direct {p0, p2, p3, p4}, Lafh;-><init>(Landroid/content/Context;Lcom/snapchat/android/model/Friend;Lic;)V

    return-void
.end method


# virtual methods
.method protected final a(Lcom/snapchat/android/model/FriendAction$BlockReason;)V
    .locals 7

    .prologue
    .line 675
    iget-object v0, p0, Laff$3$1;->a:Laff$3;

    iget-object v0, v0, Laff$3;->b:Laff;

    iget-object v0, v0, Laff;->H:Lafa;

    iget-object v1, p0, Laff$3$1;->a:Laff$3;

    iget-object v1, v1, Laff$3;->b:Laff;

    iget-object v2, p0, Laff$3$1;->a:Laff$3;

    iget-object v2, v2, Laff$3;->a:Lcom/snapchat/android/model/Friend;

    sget-object v3, Lcom/snapchat/android/model/FriendAction;->BLOCK:Lcom/snapchat/android/model/FriendAction;

    iget-object v4, p0, Laff$3$1;->a:Laff$3;

    iget-object v5, v4, Laff$3;->b:Laff;

    sget-object v6, Lic;->SWIPE_BUTTON:Lic;

    move-object v4, p1

    invoke-virtual/range {v0 .. v6}, Lafa;->a(Laff;Lcom/snapchat/android/model/Friend;Lcom/snapchat/android/model/FriendAction;Lcom/snapchat/android/model/FriendAction$BlockReason;Lpp$a;Lic;)V

    .line 678
    return-void
.end method
