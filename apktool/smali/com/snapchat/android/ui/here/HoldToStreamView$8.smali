.class final Lcom/snapchat/android/ui/here/HoldToStreamView$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 723
    iput-object p1, p0, Lcom/snapchat/android/ui/here/HoldToStreamView$8;->a:Lcom/snapchat/android/ui/here/HoldToStreamView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 726
    iget-object v0, p0, Lcom/snapchat/android/ui/here/HoldToStreamView$8;->a:Lcom/snapchat/android/ui/here/HoldToStreamView;

    iget-object v0, v0, Lcom/snapchat/android/ui/here/HoldToStreamView;->a:Lcom/snapchat/android/ui/here/StreamView$a;

    invoke-interface {v0}, Lcom/snapchat/android/ui/here/StreamView$a;->p()V

    .line 727
    return-void
.end method
