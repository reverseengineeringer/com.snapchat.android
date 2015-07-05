.class final Lcom/snapchat/android/ui/here/HoldToStreamView$9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/ui/here/HoldToStreamView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/ui/here/HoldToStreamView;


# direct methods
.method constructor <init>(Lcom/snapchat/android/ui/here/HoldToStreamView;)V
    .locals 0

    .prologue
    .line 733
    iput-object p1, p0, Lcom/snapchat/android/ui/here/HoldToStreamView$9;->a:Lcom/snapchat/android/ui/here/HoldToStreamView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 736
    iget-object v0, p0, Lcom/snapchat/android/ui/here/HoldToStreamView$9;->a:Lcom/snapchat/android/ui/here/HoldToStreamView;

    invoke-virtual {v0, p2}, Lcom/snapchat/android/ui/here/HoldToStreamView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method
