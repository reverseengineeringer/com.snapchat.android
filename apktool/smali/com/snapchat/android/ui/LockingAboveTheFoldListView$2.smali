.class final Lcom/snapchat/android/ui/LockingAboveTheFoldListView$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/ui/LockingAboveTheFoldListView;->c()V
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
    .line 627
    iput-object p1, p0, Lcom/snapchat/android/ui/LockingAboveTheFoldListView$2;->a:Lcom/snapchat/android/ui/LockingAboveTheFoldListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 630
    iget-object v0, p0, Lcom/snapchat/android/ui/LockingAboveTheFoldListView$2;->a:Lcom/snapchat/android/ui/LockingAboveTheFoldListView;

    iget-object v1, p0, Lcom/snapchat/android/ui/LockingAboveTheFoldListView$2;->a:Lcom/snapchat/android/ui/LockingAboveTheFoldListView;

    invoke-virtual {v1}, Lcom/snapchat/android/ui/LockingAboveTheFoldListView;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/LockingAboveTheFoldListView;->setSelection(I)V

    .line 631
    return-void
.end method
