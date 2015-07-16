.class final Lagf$3;
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
    .line 700
    iput-object p1, p0, Lagf$3;->b:Lagf;

    iput-object p2, p0, Lagf$3;->a:Lcom/snapchat/android/model/Friend;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 703
    new-instance v0, Lagf$3$1;

    iget-object v1, p0, Lagf$3;->b:Lagf;

    iget-object v1, v1, Lagf;->J:Landroid/content/Context;

    iget-object v2, p0, Lagf$3;->a:Lcom/snapchat/android/model/Friend;

    sget-object v3, Lil;->SWIPE_BUTTON:Lil;

    invoke-direct {v0, p0, v1, v2, v3}, Lagf$3$1;-><init>(Lagf$3;Landroid/content/Context;Lcom/snapchat/android/model/Friend;Lil;)V

    .line 711
    invoke-virtual {v0}, Lagh;->a()V

    .line 712
    return-void
.end method
