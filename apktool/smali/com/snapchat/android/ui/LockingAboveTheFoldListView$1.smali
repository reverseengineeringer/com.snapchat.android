.class final Lcom/snapchat/android/ui/LockingAboveTheFoldListView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/ui/LockingAboveTheFoldListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/ui/LockingAboveTheFoldListView;


# direct methods
.method constructor <init>(Lcom/snapchat/android/ui/LockingAboveTheFoldListView;)V
    .locals 0

    .prologue
    .line 147
    iput-object p1, p0, Lcom/snapchat/android/ui/LockingAboveTheFoldListView$1;->a:Lcom/snapchat/android/ui/LockingAboveTheFoldListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPreDraw()Z
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/snapchat/android/ui/LockingAboveTheFoldListView$1;->a:Lcom/snapchat/android/ui/LockingAboveTheFoldListView;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/LockingAboveTheFoldListView;->b()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
