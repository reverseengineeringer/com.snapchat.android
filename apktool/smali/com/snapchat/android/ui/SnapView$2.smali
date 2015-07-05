.class final Lcom/snapchat/android/ui/SnapView$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/snapchat/android/ui/VerticalSwipeLayout$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/ui/SnapView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ladn;

.field final synthetic b:Lcom/snapchat/android/ui/SnapView;


# direct methods
.method constructor <init>(Lcom/snapchat/android/ui/SnapView;Ladn;)V
    .locals 0

    .prologue
    .line 168
    iput-object p1, p0, Lcom/snapchat/android/ui/SnapView$2;->b:Lcom/snapchat/android/ui/SnapView;

    iput-object p2, p0, Lcom/snapchat/android/ui/SnapView$2;->a:Ladn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(III)V
    .locals 0

    .prologue
    .line 170
    return-void
.end method

.method public final c(I)V
    .locals 2

    .prologue
    .line 173
    if-nez p1, :cond_0

    .line 174
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapView$2;->b:Lcom/snapchat/android/ui/SnapView;

    invoke-static {v0}, Lcom/snapchat/android/ui/SnapView;->a(Lcom/snapchat/android/ui/SnapView;)Larj;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Larj;->a(Z)V

    .line 175
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapView$2;->a:Ladn;

    invoke-virtual {v0}, Ladn;->a()V

    .line 182
    :goto_0
    return-void

    .line 177
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapView$2;->b:Lcom/snapchat/android/ui/SnapView;

    invoke-static {v0}, Lcom/snapchat/android/ui/SnapView;->a(Lcom/snapchat/android/ui/SnapView;)Larj;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Larj;->a(Z)V

    .line 178
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapView$2;->a:Ladn;

    invoke-virtual {v0}, Ladn;->b()V

    .line 180
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapView$2;->b:Lcom/snapchat/android/ui/SnapView;

    invoke-static {v0}, Lcom/snapchat/android/ui/SnapView;->a(Lcom/snapchat/android/ui/SnapView;)Larj;

    move-result-object v0

    invoke-interface {v0}, Larj;->j()V

    goto :goto_0
.end method
