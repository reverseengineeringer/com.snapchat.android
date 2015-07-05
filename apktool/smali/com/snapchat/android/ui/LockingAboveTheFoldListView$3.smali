.class final Lcom/snapchat/android/ui/LockingAboveTheFoldListView$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/ui/LockingAboveTheFoldListView;->e()V
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
    .line 765
    iput-object p1, p0, Lcom/snapchat/android/ui/LockingAboveTheFoldListView$3;->a:Lcom/snapchat/android/ui/LockingAboveTheFoldListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 768
    iget-object v0, p0, Lcom/snapchat/android/ui/LockingAboveTheFoldListView$3;->a:Lcom/snapchat/android/ui/LockingAboveTheFoldListView;

    const/4 v1, -0x1

    const/16 v2, 0x64

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/ui/LockingAboveTheFoldListView;->smoothScrollBy(II)V

    .line 769
    return-void
.end method
