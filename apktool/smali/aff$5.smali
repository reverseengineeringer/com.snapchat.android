.class final Laff$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Laff;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/model/Friend;

.field final synthetic b:Laff;


# direct methods
.method constructor <init>(Laff;Lcom/snapchat/android/model/Friend;)V
    .locals 0

    .prologue
    .line 701
    iput-object p1, p0, Laff$5;->b:Laff;

    iput-object p2, p0, Laff$5;->a:Lcom/snapchat/android/model/Friend;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 7

    .prologue
    .line 704
    iget-object v0, p0, Laff$5;->b:Laff;

    iget-object v0, v0, Laff;->H:Lafa;

    iget-object v1, p0, Laff$5;->b:Laff;

    iget-object v2, p0, Laff$5;->a:Lcom/snapchat/android/model/Friend;

    sget-object v3, Lcom/snapchat/android/model/FriendAction;->IGNORE:Lcom/snapchat/android/model/FriendAction;

    const/4 v4, 0x0

    iget-object v5, p0, Laff$5;->b:Laff;

    sget-object v6, Lic;->SWIPE_BUTTON:Lic;

    invoke-virtual/range {v0 .. v6}, Lafa;->a(Laff;Lcom/snapchat/android/model/Friend;Lcom/snapchat/android/model/FriendAction;Lcom/snapchat/android/model/FriendAction$BlockReason;Lpp$a;Lic;)V

    .line 707
    return-void
.end method
