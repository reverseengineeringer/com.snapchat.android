.class final Lma$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lma;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lma;


# direct methods
.method private constructor <init>(Lma;)V
    .locals 0

    .prologue
    .line 417
    iput-object p1, p0, Lma$b;->a:Lma;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lma;B)V
    .locals 0

    .prologue
    .line 417
    invoke-direct {p0, p1}, Lma$b;-><init>(Lma;)V

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

    iget-object v0, p0, Lma$b;->a:Lma;

    iget-object v0, v0, Lma;->h:Lma$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lma$b;->a:Lma;

    iget-object v0, v0, Lma;->h:Lma$a;

    iget-object v0, v0, Lma$a;->h:Lbcc;

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
