.class final Lapg$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lapg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lapg;


# direct methods
.method constructor <init>(Lapg;I)V
    .locals 0

    .prologue
    .line 67
    iput-object p1, p0, Lapg$1;->b:Lapg;

    iput p2, p0, Lapg$1;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 70
    iget-object v0, p0, Lapg$1;->b:Lapg;

    iget v1, p0, Lapg$1;->a:I

    invoke-virtual {v0, v1}, Lapg;->a(I)V

    .line 71
    return-void
.end method
