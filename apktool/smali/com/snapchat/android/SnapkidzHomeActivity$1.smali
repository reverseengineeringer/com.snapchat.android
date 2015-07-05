.class final Lcom/snapchat/android/SnapkidzHomeActivity$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/SnapkidzHomeActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/SnapkidzHomeActivity;


# direct methods
.method constructor <init>(Lcom/snapchat/android/SnapkidzHomeActivity;)V
    .locals 0

    .prologue
    .line 120
    iput-object p1, p0, Lcom/snapchat/android/SnapkidzHomeActivity$1;->a:Lcom/snapchat/android/SnapkidzHomeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onGlobalLayout()V
    .locals 2

    .prologue
    .line 123
    invoke-static {}, Lban;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v1, Lbbt;

    invoke-direct {v1}, Lbbt;-><init>()V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 124
    return-void
.end method
