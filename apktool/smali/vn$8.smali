.class final Lvn$8;
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

.field final synthetic b:Lvn;


# direct methods
.method constructor <init>(Lvn;I)V
    .locals 0

    .prologue
    .line 268
    iput-object p1, p0, Lvn$8;->b:Lvn;

    iput p2, p0, Lvn$8;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 271
    iget-object v0, p0, Lvn$8;->b:Lvn;

    iget-object v0, v0, Lvn;->g:Landroid/widget/TextView;

    const v1, 0x7f02001f

    const v2, 0x7f02001e

    iget v3, p0, Lvn$8;->a:I

    invoke-static {v0, v1, v2, v3}, Lvn;->a(Landroid/widget/TextView;III)V

    .line 276
    return-void
.end method
