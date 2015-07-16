.class final Lcom/snapchat/android/ui/SnapView$1;
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
.field final synthetic a:Lcom/snapchat/android/ui/SnapView;


# direct methods
.method constructor <init>(Lcom/snapchat/android/ui/SnapView;)V
    .locals 0

    .prologue
    .line 159
    iput-object p1, p0, Lcom/snapchat/android/ui/SnapView$1;->a:Lcom/snapchat/android/ui/SnapView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(III)V
    .locals 2

    .prologue
    .line 162
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapView$1;->a:Lcom/snapchat/android/ui/SnapView;

    invoke-static {v0}, Lcom/snapchat/android/ui/SnapView;->a(Lcom/snapchat/android/ui/SnapView;)Lasi;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 163
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapView$1;->a:Lcom/snapchat/android/ui/SnapView;

    invoke-static {v0}, Lcom/snapchat/android/ui/SnapView;->a(Lcom/snapchat/android/ui/SnapView;)Lasi;

    move-result-object v1

    if-eqz p3, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-interface {v1, v0}, Lasi;->a(Z)V

    .line 165
    :cond_0
    return-void

    .line 163
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final c(I)V
    .locals 2

    .prologue
    .line 168
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapView$1;->a:Lcom/snapchat/android/ui/SnapView;

    invoke-static {v0}, Lcom/snapchat/android/ui/SnapView;->a(Lcom/snapchat/android/ui/SnapView;)Lasi;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 169
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapView$1;->a:Lcom/snapchat/android/ui/SnapView;

    invoke-static {v0}, Lcom/snapchat/android/ui/SnapView;->a(Lcom/snapchat/android/ui/SnapView;)Lasi;

    move-result-object v1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-interface {v1, v0}, Lasi;->a(Z)V

    .line 171
    :cond_0
    return-void

    .line 169
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
