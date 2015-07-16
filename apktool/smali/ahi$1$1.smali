.class final Lahi$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/snapchat/android/util/AlertDialogUtils$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lahi$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lahi$1;


# direct methods
.method constructor <init>(Lahi$1;)V
    .locals 0

    .prologue
    .line 82
    iput-object p1, p0, Lahi$1$1;->a:Lahi$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/snapchat/android/util/AlertDialogUtils$YesNoOption;)V
    .locals 6

    .prologue
    .line 85
    sget-object v0, Lcom/snapchat/android/util/AlertDialogUtils$YesNoOption;->YES:Lcom/snapchat/android/util/AlertDialogUtils$YesNoOption;

    if-ne p1, v0, :cond_0

    .line 86
    iget-object v0, p0, Lahi$1$1;->a:Lahi$1;

    iget-object v1, v0, Lahi$1;->c:Lahi;

    iget-object v0, p0, Lahi$1$1;->a:Lahi$1;

    iget-object v4, v0, Lahi$1;->a:Lahi$a;

    iget-object v0, p0, Lahi$1$1;->a:Lahi$1;

    iget-object v2, v0, Lahi$1;->b:Lcom/snapchat/android/model/Friend;

    iget-object v0, v4, Lahi$a;->l:Landroid/view/View;

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, v4, Lahi$a;->m:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    new-instance v0, Lahi$2;

    sget-object v3, Lcom/snapchat/android/model/FriendAction;->UNBLOCK:Lcom/snapchat/android/model/FriendAction;

    move-object v5, v2

    invoke-direct/range {v0 .. v5}, Lahi$2;-><init>(Lahi;Lcom/snapchat/android/model/Friend;Lcom/snapchat/android/model/FriendAction;Lahi$a;Lcom/snapchat/android/model/Friend;)V

    sget-object v1, Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;->SETTINGS:Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;

    iput-object v1, v0, Lqg;->mAnalyticsContext:Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;

    invoke-virtual {v0}, Lqg;->execute()V

    .line 88
    :cond_0
    return-void
.end method
