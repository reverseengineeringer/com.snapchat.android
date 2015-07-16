.class final Lapt$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lapt;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lbkk;

.field final synthetic b:Lapt;


# direct methods
.method constructor <init>(Lapt;Lbkk;)V
    .locals 0

    .prologue
    .line 76
    iput-object p1, p0, Lapt$1;->b:Lapt;

    iput-object p2, p0, Lapt$1;->a:Lbkk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 79
    new-instance v1, Lbfd;

    iget-object v0, p0, Lapt$1;->a:Lbkk;

    invoke-virtual {v0}, Lbkk;->a()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lbfd;-><init>(Ljava/lang/String;)V

    .line 80
    iget-object v0, p0, Lapt$1;->b:Lapt;

    invoke-static {v0}, Lapt;->a(Lapt;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/LandingPageActivity;

    .line 81
    invoke-virtual {v0, v1}, Lcom/snapchat/android/LandingPageActivity;->onSwitchToChatEvent(Lbfd;)V

    .line 82
    return-void
.end method
