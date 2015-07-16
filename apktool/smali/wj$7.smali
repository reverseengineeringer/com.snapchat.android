.class final Lwj$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:I

.field final synthetic c:Lwj;


# direct methods
.method constructor <init>(Lwj;II)V
    .locals 0

    .prologue
    .line 256
    iput-object p1, p0, Lwj$7;->c:Lwj;

    iput p2, p0, Lwj$7;->a:I

    iput p3, p0, Lwj$7;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 259
    iget-object v0, p0, Lwj$7;->c:Lwj;

    iget-object v0, v0, Lwj;->f:Landroid/widget/TextView;

    iget v1, p0, Lwj$7;->a:I

    const v2, 0x7f02001b

    iget v3, p0, Lwj$7;->b:I

    invoke-static {v0, v1, v2, v3}, Lwj;->a(Landroid/widget/TextView;III)V

    .line 263
    return-void
.end method
