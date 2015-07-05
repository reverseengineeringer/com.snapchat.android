.class final Lcom/snapchat/android/ui/SnapView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/ui/SnapView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/ui/SnapView;


# direct methods
.method constructor <init>(Lcom/snapchat/android/ui/SnapView;)V
    .locals 0

    .prologue
    .line 160
    iput-object p1, p0, Lcom/snapchat/android/ui/SnapView$1;->a:Lcom/snapchat/android/ui/SnapView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 163
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapView$1;->a:Lcom/snapchat/android/ui/SnapView;

    iget-object v0, v0, Lcom/snapchat/android/ui/SnapView;->d:Lcom/snapchat/android/ui/VerticalSwipeLayout;

    const/4 v1, 0x1

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    invoke-virtual {v0, v1, v2, v3}, Lcom/snapchat/android/ui/VerticalSwipeLayout;->a(ID)V

    .line 164
    return-void
.end method
