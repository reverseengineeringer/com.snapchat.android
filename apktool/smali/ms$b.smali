.class final Lms$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lms;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lms;


# direct methods
.method private constructor <init>(Lms;)V
    .locals 0

    .prologue
    .line 417
    iput-object p1, p0, Lms$b;->a:Lms;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lms;B)V
    .locals 0

    .prologue
    .line 417
    invoke-direct {p0, p1}, Lms$b;-><init>(Lms;)V

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 420
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lms$b;->a:Lms;

    iget-object v0, v0, Lms;->h:Lms$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lms$b;->a:Lms;

    iget-object v0, v0, Lms;->h:Lms$a;

    iget-object v0, v0, Lms$a;->h:Lbdc;

    if-eqz v0, :cond_0

    .line 422
    const/4 v0, 0x1

    .line 425
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
