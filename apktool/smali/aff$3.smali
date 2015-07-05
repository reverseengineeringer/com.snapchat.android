.class final Laff$3;
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
    .line 669
    iput-object p1, p0, Laff$3;->b:Laff;

    iput-object p2, p0, Laff$3;->a:Lcom/snapchat/android/model/Friend;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 672
    new-instance v0, Laff$3$1;

    iget-object v1, p0, Laff$3;->b:Laff;

    iget-object v1, v1, Laff;->J:Landroid/content/Context;

    iget-object v2, p0, Laff$3;->a:Lcom/snapchat/android/model/Friend;

    sget-object v3, Lic;->SWIPE_BUTTON:Lic;

    invoke-direct {v0, p0, v1, v2, v3}, Laff$3$1;-><init>(Laff$3;Landroid/content/Context;Lcom/snapchat/android/model/Friend;Lic;)V

    .line 680
    invoke-virtual {v0}, Lafh;->a()V

    .line 681
    return-void
.end method
