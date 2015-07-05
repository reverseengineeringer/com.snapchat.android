.class final Lcom/snapchat/android/ui/CashSwiperView$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/ui/CashSwiperView;->a(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/ui/CashSwiperView;


# direct methods
.method constructor <init>(Lcom/snapchat/android/ui/CashSwiperView;)V
    .locals 0

    .prologue
    .line 135
    iput-object p1, p0, Lcom/snapchat/android/ui/CashSwiperView$5;->a:Lcom/snapchat/android/ui/CashSwiperView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    .prologue
    .line 138
    iget-object v0, p0, Lcom/snapchat/android/ui/CashSwiperView$5;->a:Lcom/snapchat/android/ui/CashSwiperView;

    iget-object v1, p0, Lcom/snapchat/android/ui/CashSwiperView$5;->a:Lcom/snapchat/android/ui/CashSwiperView;

    invoke-static {v1}, Lcom/snapchat/android/ui/CashSwiperView;->a(Lcom/snapchat/android/ui/CashSwiperView;)Landroid/view/View;

    move-result-object v1

    invoke-static {v0, p2, v1}, Lcom/snapchat/android/ui/CashSwiperView;->a(Lcom/snapchat/android/ui/CashSwiperView;Landroid/view/MotionEvent;Landroid/view/View;)Z

    move-result v0

    return v0
.end method
