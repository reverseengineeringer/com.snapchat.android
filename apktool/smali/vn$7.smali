.class final Lvn$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:I

.field final synthetic c:Lvn;


# direct methods
.method constructor <init>(Lvn;II)V
    .locals 0

    .prologue
    .line 255
    iput-object p1, p0, Lvn$7;->c:Lvn;

    iput p2, p0, Lvn$7;->a:I

    iput p3, p0, Lvn$7;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 258
    iget-object v0, p0, Lvn$7;->c:Lvn;

    iget-object v0, v0, Lvn;->f:Landroid/widget/TextView;

    iget v1, p0, Lvn$7;->a:I

    const v2, 0x7f02001b

    iget v3, p0, Lvn$7;->b:I

    invoke-static {v0, v1, v2, v3}, Lvn;->a(Landroid/widget/TextView;III)V

    .line 262
    return-void
.end method
