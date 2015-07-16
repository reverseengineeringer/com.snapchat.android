.class final Lapv$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lapv;->seekTo(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lapv;


# direct methods
.method constructor <init>(Lapv;I)V
    .locals 0

    .prologue
    .line 122
    iput-object p1, p0, Lapv$1;->b:Lapv;

    iput p2, p0, Lapv$1;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 125
    iget-object v0, p0, Lapv$1;->b:Lapv;

    iget v1, p0, Lapv$1;->a:I

    invoke-static {v0, v1}, Lapv;->a(Lapv;I)V

    .line 126
    return-void
.end method
